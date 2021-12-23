use sdk::subsocial::{profiles, runtime_types};
use sdk::subxt::sp_core::crypto::{Ss58AddressFormatRegistry, Ss58Codec};

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::{Signer, SubsocialApi};

pub async fn create_profile(
    api: &SubsocialApi,
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

    let maybe_event = api
        .tx()
        .profiles()
        .create_profile(content)
        .sign_and_submit_then_watch(signer)
        .await?
        .wait_for_finalized_success()
        .await?
        .find_first_event::<profiles::events::ProfileCreated>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::ProfileCreated(ProfileCreated {
                account_id: event.0.to_ss58check_with_version(
                    Ss58AddressFormatRegistry::SubsocialAccount.into(),
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
    api: &SubsocialApi,
    signer: &mut Signer,
    UpdateProfile { maybe_content }: UpdateProfile,
) -> Result<ResponseBody, Error> {
    // incremnt signer nonce
    signer.increment_nonce();
    let update = runtime_types::pallet_profiles::ProfileUpdate {
        content: maybe_content.map(Into::into),
    };
    let maybe_event = api
        .tx()
        .profiles()
        .update_profile(update)
        .sign_and_submit_then_watch(signer)
        .await?
        .wait_for_finalized_success()
        .await?
        .find_first_event::<profiles::events::ProfileUpdated>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::ProfileUpdated(ProfileUpdated {
                account_id: event.0.to_ss58check_with_version(
                    Ss58AddressFormatRegistry::SubsocialAccount.into(),
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
