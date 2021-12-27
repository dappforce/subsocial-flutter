use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::SubsocialApi;

pub async fn reactions_ids_by_post_id(
    api: &SubsocialApi,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let reaction_ids = api
        .storage()
        .reactions()
        .reaction_ids_by_post_id(post_id, None)
        .await?;
    Ok(ResponseBody::ReactionIdsByPostId(ReactionIdsByPostId {
        reaction_ids,
    }))
}

pub async fn reaction_by_id(
    api: &SubsocialApi,
    reaction_id: u64,
) -> Result<ResponseBody, Error> {
    let reaction = api
        .storage()
        .reactions()
        .reaction_by_id(reaction_id, None)
        .await?;
    let body = ResponseBody::ReactionById(ReactionById {
        reaction: reaction.map(Into::into),
    });
    Ok(body)
}

pub async fn post_reaction_id_by_account(
    api: &SubsocialApi,
    GetPostReactionIdByAccount {
        account_id,
        post_id,
    }: GetPostReactionIdByAccount,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let reaction_id = api
        .storage()
        .reactions()
        .post_reaction_id_by_account(account_id, post_id, None)
        .await?;
    let body = ResponseBody::PostReactionIdByAccount(PostReactionIdByAccount {
        reaction_id,
    });
    Ok(body)
}
