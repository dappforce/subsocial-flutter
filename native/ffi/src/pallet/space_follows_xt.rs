use sdk::subsocial::api::space_follows;
use sdk::subxt::sp_core::crypto::{Ss58AddressFormatRegistry, Ss58Codec};

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::{Signer, SubsocialApi};

pub async fn follow_space(
    api: &SubsocialApi,
    signer: &mut Signer,
    FollowSpace { space_id }: FollowSpace,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let maybe_event = api
        .tx()
        .space_follows()
        .follow_space(space_id)
        .sign_and_submit_then_watch(signer)
        .await?
        .find_event::<space_follows::events::SpaceFollowed>()?;
    match maybe_event {
        Some(event) => Ok(ResponseBody::SpaceFollowed(SpaceFollowed {
            space_id: event.1,
            follower: event.0.to_ss58check_with_version(
                Ss58AddressFormatRegistry::SubsocialAccount.into(),
            ),
        })),
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Followed Event Not Found"),
        }),
    }
}

pub async fn unfollow_space(
    api: &SubsocialApi,
    signer: &mut Signer,
    UnfollowSpace { space_id }: UnfollowSpace,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let maybe_event = api
        .tx()
        .space_follows()
        .unfollow_space(space_id)
        .sign_and_submit_then_watch(signer)
        .await?
        .find_event::<space_follows::events::SpaceUnfollowed>()?;
    match maybe_event {
        Some(event) => Ok(ResponseBody::SpaceUnfollowed(SpaceUnfollowed {
            space_id: event.1,
            follower: event.0.to_ss58check_with_version(
                Ss58AddressFormatRegistry::SubsocialAccount.into(),
            ),
        })),
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Unfollowed Event Not Found"),
        }),
    }
}

// this function is here since it uses the signer, however, it does not make any transactions.
pub async fn is_space_follower(
    api: &SubsocialApi,
    signer: &Signer,
    IsSpaceFollower { space_id }: IsSpaceFollower,
) -> Result<ResponseBody, Error> {
    use sdk::subxt::Signer;
    let my_account_id = signer.account_id().clone();

    let v = api
        .storage()
        .space_follows()
        .space_followed_by_account(my_account_id, space_id, None)
        .await?;
    Ok(ResponseBody::IsSpaceFollower(v))
}
