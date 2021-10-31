use sdk::pallet::profiles::*;
use sdk::subxt::sp_core::crypto::{Ss58AddressFormat, Ss58Codec};

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::{Signer, SubsocialClient};

pub async fn create_profile(
    client: &SubsocialClient,
    signer: &mut Signer,
    CreateProfile { content }: CreateProfile,
) -> Result<ResponseBody, Error> {
    // incremnt signer nonce
    signer.increment_nonce();
    let content = match content {
        Some(val) => val.into(),
        None => {
            return Err(Error {
                kind: error::Kind::InvalidRequest.into(),
                msg: String::from("Missing content value"),
            })
        }
    };

    let maybe_event = client
        .create_profile_and_watch(signer, content)
        .await?
        .find_event::<ProfileCreatedEvent<_>>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::ProfileCreated(ProfileCreated {
                account_id: event.account_id.to_ss58check_with_version(
                    Ss58AddressFormat::SubsocialAccount,
                ),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Profile Created Event Not Found"),
        }),
    }
}

pub async fn update_profile(
    client: &SubsocialClient,
    signer: &mut Signer,
    UpdateProfile { maybe_content }: UpdateProfile,
) -> Result<ResponseBody, Error> {
    // incremnt signer nonce
    signer.increment_nonce();
    let update = ProfileUpdate {
        content: maybe_content.map(Into::into),
    };
    let maybe_event = client
        .update_profile_and_watch(signer, update)
        .await?
        .find_event::<ProfileUpdatedEvent<_>>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::ProfileUpdated(ProfileUpdated {
                account_id: event.account_id.to_ss58check_with_version(
                    Ss58AddressFormat::SubsocialAccount,
                ),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Profile Updated Event Not Found"),
        }),
    }
}
