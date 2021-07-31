use prost::Message;
use sdk::pallet::{posts, reactions, spaces};
use sdk::runtime::SubsocialRuntime;
use sdk::subxt::Client;

use crate::pb::subsocial::request::Body as RequestBody;
use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;

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
        }
    };
    let result = match body {
        RequestBody::SpaceById(args) => {
            space_by_id(client, args.space_id).await
        }
        RequestBody::SpaceByHandle(args) => {
            space_by_handle(client, args.handle).await
        }
        RequestBody::PostIdsBySpaceId(args) => {
            posts_ids_by_space_id(client, args.space_id).await
        }
        RequestBody::PostById(args) => post_by_id(client, args.post_id).await,
        RequestBody::ReactionIdsByPostId(args) => {
            reactions_ids_by_post_id(client, args.post_id).await
        }
        RequestBody::ReactionById(args) => {
            reaction_by_id(client, args.reaction_id).await
        }
        RequestBody::ReplyIdsByPostId(args) => {
            reply_ids_by_post_id(client, args.post_id).await
        }
    };
    let response = match result {
        Ok(body) => Response { body: Some(body) },
        Err(e) => Response {
            body: Some(ResponseBody::Error(e)),
        },
    };
    let mut buffer = Vec::new();
    response.encode(&mut buffer).expect("should never fails");
    buffer
}

async fn space_by_id(
    client: &Client<SubsocialRuntime>,
    space_id: u64,
) -> Result<ResponseBody, Error> {
    let store = spaces::SpaceByIdStore::new(space_id);
    let maybe_space = client.fetch(&store, None).await.unwrap();
    match maybe_space {
        Some(space) => {
            let body = ResponseBody::SpaceById(SpaceById {
                space: Some(space.into()),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Not Found"),
        }),
    }
}

async fn space_by_handle(
    client: &Client<SubsocialRuntime>,
    handle: String,
) -> Result<ResponseBody, Error> {
    let store = spaces::SpaceIdByHandleStore::new(handle);
    let maybe_space_id = client.fetch(&store, None).await.unwrap();
    match maybe_space_id {
        Some(space_id) => {
            let body = space_by_id(client, space_id).await?;
            let space = match body {
                ResponseBody::SpaceById(space_by_id) => space_by_id.space,
                _ => unreachable!(),
            };
            let body = ResponseBody::SpaceByHandle(SpaceByHandle { space });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Not Found"),
        }),
    }
}

async fn posts_ids_by_space_id(
    client: &Client<SubsocialRuntime>,
    space_id: u64,
) -> Result<ResponseBody, Error> {
    let store = posts::PostIdsBySpaceIdStore::new(space_id);
    let maybe_ids = client.fetch(&store, None).await.unwrap();
    match maybe_ids {
        Some(ids) => {
            let body = ResponseBody::PostIdsBySpaceId(PostIdsBySpaceId {
                post_ids: ids,
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Not Found"),
        }),
    }
}

async fn post_by_id(
    client: &Client<SubsocialRuntime>,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let store = posts::PostByIdStore::new(post_id);
    let maybe_post = client.fetch(&store, None).await.unwrap();
    match maybe_post {
        Some(post) => {
            let body = ResponseBody::PostById(PostById {
                post: Some(post.into()),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Not Found"),
        }),
    }
}

async fn reactions_ids_by_post_id(
    client: &Client<SubsocialRuntime>,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let store = reactions::ReactionIdsByPostIdStore::new(post_id);
    let maybe_ids = client.fetch(&store, None).await.unwrap();
    match maybe_ids {
        Some(ids) => {
            let body = ResponseBody::ReactionIdsByPostId(ReactionIdsByPostId {
                reaction_ids: ids,
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Not Found"),
        }),
    }
}

async fn reaction_by_id(
    client: &Client<SubsocialRuntime>,
    reaction_id: u64,
) -> Result<ResponseBody, Error> {
    let store = reactions::ReactionByIdStore::new(reaction_id);
    let maybe_reaction = client.fetch(&store, None).await.unwrap();
    match maybe_reaction {
        Some(reaction) => {
            let body = ResponseBody::ReactionById(ReactionById {
                reaction: Some(reaction.into()),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Reaction Not Found"),
        }),
    }
}

async fn reply_ids_by_post_id(
    client: &Client<SubsocialRuntime>,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let store = posts::ReplyIdsByPostIdStore::new(post_id);
    let maybe_ids = client.fetch(&store, None).await.unwrap();
    match maybe_ids {
        Some(ids) => {
            let body = ResponseBody::ReplyIdsByPostId(ReplyIdsByPostId {
                reply_ids: ids,
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Not Found"),
        }),
    }
}
