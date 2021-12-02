use sdk::subsocial::api::profile_follows;
use sdk::subxt::sp_core::crypto::{Ss58AddressFormatRegistry, Ss58Codec};
use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::{Signer, SubsocialApi};

pub async fn follow_account(
    api: &SubsocialApi,
    signer: &mut Signer,
    FollowAccount { account_id }: FollowAccount,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let account_id = AccountId32::convert(account_id)?;
    let maybe_event = api
        .tx()
        .profile_follows()
        .follow_account(account_id)
        .sign_and_submit_then_watch(signer)
        .await?
        .find_event::<profile_follows::events::AccountFollowed>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::AccountFollowed(AccountFollowed {
                follower: event.0.to_ss58check_with_version(
                    Ss58AddressFormatRegistry::SubsocialAccount.into(),
                ),
                following: event.1.to_ss58check_with_version(
                    Ss58AddressFormatRegistry::SubsocialAccount.into(),
                ),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Account Followed Event Not Found"),
        }),
    }
}

pub async fn unfollow_account(
    api: &SubsocialApi,
    signer: &mut Signer,
    UnfollowAccount { account_id }: UnfollowAccount,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let account_id = AccountId32::convert(account_id)?;
    let maybe_event = api
        .tx()
        .profile_follows()
        .unfollow_account(account_id)
        .sign_and_submit_then_watch(signer)
        .await?
        .find_event::<profile_follows::events::AccountUnfollowed>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::AccountUnfollowed(AccountUnfollowed {
                follower: event.0.to_ss58check_with_version(
                    Ss58AddressFormatRegistry::SubsocialAccount.into(),
                ),
                unfollowing: event.1.to_ss58check_with_version(
                    Ss58AddressFormatRegistry::SubsocialAccount.into(),
                ),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Account Unfollowed Event Not Found"),
        }),
    }
}

// this function is mainly here since it touches the signer, but it is not a transaction anyway.
pub async fn is_account_follower(
    api: &SubsocialApi,
    signer: &Signer,
    IsAccountFollower { account_id }: IsAccountFollower,
) -> Result<ResponseBody, Error> {
    use sdk::subxt::Signer;
    let account_id = AccountId32::convert(account_id)?;
    let my_account_id = signer.account_id().clone();
    let v = api
        .storage()
        .profile_follows()
        .account_followed_by_account(account_id, my_account_id, None)
        .await?;
    Ok(ResponseBody::IsAccountFollower(v))
}
