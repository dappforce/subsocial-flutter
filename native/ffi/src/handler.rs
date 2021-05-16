use prost::Message;
use sdk::pallet::spaces::*;
use sdk::runtime::SubsocialRuntime;
use sdk::subxt::Client;

use crate::pb::subsoical::request::Body as RequestBody;
use crate::pb::subsoical::response::Body as ResponseBody;
use crate::pb::subsoical::*;

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
    use crate::subsoical::Space;
    let store = SpaceByIdStore::new(space_id);
    let maybe_space = client.fetch(&store, None).await.unwrap();
    match maybe_space {
        Some(space) => {
            let body = ResponseBody::SpaceById(SpaceById {
                space: Some(Space { id: space.id }),
            });
            Response { body: Some(body) }
        },
        None => {
            // handle not found.
            Response::default()
        },
    }
}
