use sdk::pallet::reactions;
use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::SubsocialClient;

pub async fn reactions_ids_by_post_id(
    client: &SubsocialClient,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let store = reactions::ReactionIdsByPostIdStore::new(post_id);
    let maybe_ids = client.fetch(&store, None).await?;
    match maybe_ids {
        Some(ids) => {
            Ok(ResponseBody::ReactionIdsByPostId(ReactionIdsByPostId {
                reaction_ids: ids,
            }))
        }
        None => Ok(ResponseBody::ReactionIdsByPostId(Default::default())),
    }
}

pub async fn reaction_by_id(
    client: &SubsocialClient,
    reaction_id: u64,
) -> Result<ResponseBody, Error> {
    let store = reactions::ReactionByIdStore::new(reaction_id);
    let maybe_reaction = client.fetch(&store, None).await?;
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

pub async fn post_reaction_id_by_account(
    client: &SubsocialClient,
    GetPostReactionIdByAccount {
        account_id,
        post_id,
    }: GetPostReactionIdByAccount,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let store =
        reactions::PostReactionIdByAccountStore::new(account_id, post_id);
    let maybe_reaction_id = client.fetch(&store, None).await?;
    match maybe_reaction_id {
        Some(reaction_id) => {
            let body = ResponseBody::PostReactionIdByAccount(
                PostReactionIdByAccount { reaction_id },
            );
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("PostReactionId by Account Not Found"),
        }),
    }
}
