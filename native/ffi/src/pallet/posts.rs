use sdk::pallet::posts;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::SubsocialClient;

pub async fn post_by_id(
    client: &SubsocialClient,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let store = posts::PostByIdStore::new(post_id);
    let maybe_post = client.fetch(&store, None).await?;
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

pub async fn posts_ids_by_space_id(
    client: &SubsocialClient,
    space_id: u64,
) -> Result<ResponseBody, Error> {
    let store = posts::PostIdsBySpaceIdStore::new(space_id);
    let maybe_ids = client.fetch(&store, None).await?;
    match maybe_ids {
        Some(ids) => Ok(ResponseBody::PostIdsBySpaceId(PostIdsBySpaceId {
            post_ids: ids,
        })),
        None => Ok(ResponseBody::PostIdsBySpaceId(Default::default())),
    }
}

pub async fn reply_ids_by_post_id(
    client: &SubsocialClient,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let store = posts::ReplyIdsByPostIdStore::new(post_id);
    let maybe_ids = client.fetch(&store, None).await?;
    match maybe_ids {
        Some(ids) => Ok(ResponseBody::ReplyIdsByPostId(ReplyIdsByPostId {
            reply_ids: ids,
        })),
        None => Ok(ResponseBody::ReplyIdsByPostId(Default::default())),
    }
}

pub async fn next_post_id(
    client: &SubsocialClient,
) -> Result<ResponseBody, Error> {
    let store = posts::NextPostIdStore::default();
    let maybe_id = client.fetch(&store, None).await?;
    match maybe_id {
        Some(id) => Ok(ResponseBody::NextPostId(NextPostId { id })),
        None => Ok(ResponseBody::NextPostId(Default::default())),
    }
}
