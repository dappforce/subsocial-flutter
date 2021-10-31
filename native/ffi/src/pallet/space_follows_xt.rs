use sdk::pallet::space_follows::{self, *};
use sdk::subxt::sp_core::crypto::{Ss58AddressFormat, Ss58Codec};

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::{Signer, SubsocialClient};

pub async fn follow_space(
    client: &SubsocialClient,
    signer: &mut Signer,
    FollowSpace { space_id }: FollowSpace,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let maybe_event = client
        .follow_space_and_watch(signer, space_id)
        .await?
        .find_event::<SpaceFollowedEvent<_>>()?;
    match maybe_event {
        Some(event) => Ok(ResponseBody::SpaceFollowed(SpaceFollowed {
            space_id: event.space_id,
            follower: event
                .follower
                .to_ss58check_with_version(Ss58AddressFormat::SubsocialAccount),
        })),
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Followed Event Not Found"),
        }),
    }
}

pub async fn unfollow_space(
    client: &SubsocialClient,
    signer: &mut Signer,
    UnfollowSpace { space_id }: UnfollowSpace,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let maybe_event = client
        .unfollow_space_and_watch(signer, space_id)
        .await?
        .find_event::<SpaceUnfollowedEvent<_>>()?;
    match maybe_event {
        Some(event) => Ok(ResponseBody::SpaceUnfollowed(SpaceUnfollowed {
            space_id: event.space_id,
            follower: event
                .follower
                .to_ss58check_with_version(Ss58AddressFormat::SubsocialAccount),
        })),
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Unfollowed Event Not Found"),
        }),
    }
}

pub async fn is_space_follower(
    client: &SubsocialClient,
    signer: &Signer,
    IsSpaceFollower { space_id }: IsSpaceFollower,
) -> Result<ResponseBody, Error> {
    use sdk::subxt::Signer;
    let my_account_id = signer.account_id().clone();
    let store = space_follows::SpaceFollowedByAccountStore::new(
        my_account_id,
        space_id,
    );
    let response = client.fetch_or_default(&store, None).await?;
    Ok(ResponseBody::IsSpaceFollower(response))
}
