use prost::Message;
use sdk::pallet::spaces::*;
use sdk::pallet::utils::Content;
use sdk::runtime::SubsocialRuntime;
use sdk::subxt::Client;

use crate::pb::subsocial::request::Body as RequestBody;
use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::{Content as PbContent, *};

pub async fn handle(
    client: &Client<SubsocialRuntime>,
    req: Request,
) -> Vec<u8> {
    let body = match req.body {
        Some(v) => v,
        None => {
            let mut bytes = Vec::new();
            let kind = error::Kind::InvalidRequest.into();
            Error {
                kind,
                msg: String::from("Empty body"),
            }
            .encode(&mut bytes)
            .expect("should never fails");
            return bytes;
        },
    };
    let response = match body {
        RequestBody::SpaceById(args) => {
            space_by_id(client, args.space_id).await
        },
        RequestBody::SpaceByHandle(_) => todo!(),
        RequestBody::PostById(_) => todo!(),
        RequestBody::PostIdsBySpaceId(_) => todo!(),
        RequestBody::ReactionById(_) => todo!(),
        RequestBody::ReactionIdsByPostId(_) => todo!(),
    };
    let mut buffer = Vec::new();
    response.encode(&mut buffer).expect("should never fails");
    buffer
}

async fn space_by_id(
    client: &Client<SubsocialRuntime>,
    space_id: u64,
) -> Response {
    use crate::subsocial::Space;
    let store = SpaceByIdStore::new(space_id);
    let maybe_space = client.fetch(&store, None).await.unwrap();
    match maybe_space {
        Some(space) => {
            let body = ResponseBody::SpaceById(SpaceById {
                space: Some(Space {
                    id: space.id,
                    created: space.created.time,
                    updated: space.updated.map(|v| v.time).unwrap_or_default(),
                    owner: space.owner.to_string(),
                    parent_id: space.parent_id.unwrap_or_default(),
                    handle: space
                        .handle
                        .map(String::from_utf8)
                        .transpose()
                        .unwrap_or_default()
                        .unwrap_or_default(),
                    content: match space.content {
                        Content::None => None,
                        Content::Raw(value) => Some(PbContent {
                            value: Some(content::Value::Raw(value)),
                        }),
                        Content::IPFS(cid) => Some(PbContent {
                            value: Some(content::Value::Ipfs(
                                String::from_utf8(cid).unwrap(),
                            )),
                        }),
                        Content::Hyper(link) => Some(PbContent {
                            value: Some(content::Value::Hyper(
                                String::from_utf8(link).unwrap(),
                            )),
                        }),
                    },
                    hidden: space.hidden,
                    posts_count: space.posts_count,
                    hidden_posts_count: space.hidden_posts_count,
                    followers_count: space.followers_count,
                    score: space.score,
                }),
            });
            Response { body: Some(body) }
        },
        None => {
            // handle not found.
            Response {
                body: Some(ResponseBody::Error(Error {
                    kind: error::Kind::NotFound.into(),
                    msg: String::from("Space Not Found"),
                })),
            }
        },
    }
}
