use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::SubsocialApi;

pub async fn post_by_id(
    api: &SubsocialApi,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let post = api.storage().posts().post_by_id(post_id, None).await?;
    let body = ResponseBody::PostById(PostById {
        post: post.map(Into::into),
    });
    Ok(body)
}

pub async fn posts_ids_by_space_id(
    api: &SubsocialApi,
    space_id: u64,
) -> Result<ResponseBody, Error> {
    let post_ids = api
        .storage()
        .posts()
        .post_ids_by_space_id(space_id, None)
        .await?;
    Ok(ResponseBody::PostIdsBySpaceId(PostIdsBySpaceId {
        post_ids,
    }))
}

pub async fn reply_ids_by_post_id(
    api: &SubsocialApi,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let reply_ids = api
        .storage()
        .posts()
        .reply_ids_by_post_id(post_id, None)
        .await?;
    Ok(ResponseBody::ReplyIdsByPostId(ReplyIdsByPostId {
        reply_ids,
    }))
}

pub async fn next_post_id(api: &SubsocialApi) -> Result<ResponseBody, Error> {
    let id = api.storage().posts().next_post_id(None).await?;
    Ok(ResponseBody::NextPostId(NextPostId { id }))
}
