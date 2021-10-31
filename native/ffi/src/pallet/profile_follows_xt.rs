use sdk::pallet::profile_follows::{self, *};
use sdk::subxt::sp_core::crypto::{Ss58AddressFormat, Ss58Codec};
use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::{Signer, SubsocialClient};

pub async fn follow_account(
    client: &SubsocialClient,
    signer: &mut Signer,
    FollowAccount { account_id }: FollowAccount,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let account_id = AccountId32::convert(account_id)?;
    let maybe_event = client
        .follow_account_and_watch(signer, account_id)
        .await?
        .find_event::<AccountFollowedEvent<_>>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::AccountFollowed(AccountFollowed {
                follower: event.follower.to_ss58check_with_version(
                    Ss58AddressFormat::SubsocialAccount,
                ),
                following: event.following.to_ss58check_with_version(
                    Ss58AddressFormat::SubsocialAccount,
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
    client: &SubsocialClient,
    signer: &mut Signer,
    UnfollowAccount { account_id }: UnfollowAccount,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let account_id = AccountId32::convert(account_id)?;
    let maybe_event = client
        .unfollow_account_and_watch(signer, account_id)
        .await?
        .find_event::<AccountUnfollowedEvent<_>>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::AccountUnfollowed(AccountUnfollowed {
                follower: event.follower.to_ss58check_with_version(
                    Ss58AddressFormat::SubsocialAccount,
                ),
                unfollowing: event.unfollowing.to_ss58check_with_version(
                    Ss58AddressFormat::SubsocialAccount,
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

pub async fn is_account_follower(
    client: &SubsocialClient,
    signer: &Signer,
    IsAccountFollower { account_id }: IsAccountFollower,
) -> Result<ResponseBody, Error> {
    use sdk::subxt::Signer;
    let account_id = AccountId32::convert(account_id)?;
    let my_account_id = signer.account_id().clone();
    let store = profile_follows::AccountFollowedByAccountStore::new(
        account_id,
        my_account_id,
    );
    let response = client.fetch_or_default(&store, None).await?;
    Ok(ResponseBody::IsAccountFollower(response))
}
