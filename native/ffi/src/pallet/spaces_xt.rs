use sdk::subsocial::spaces;
use sdk::subxt::sp_core::crypto::{Ss58AddressFormatRegistry, Ss58Codec};

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::{Signer, SubsocialApi};

pub async fn create_space(
    api: &SubsocialApi,
    signer: &mut Signer,
    CreateSpace {
        parent_id,
        handle,
        content,
    }: CreateSpace,
) -> Result<ResponseBody, Error> {
    // increment the signer nonce
    signer.increment_nonce();
    let maybe_parent_id = if parent_id != 0 {
        Some(parent_id)
    } else {
        None
    };
    let maybe_handle = if handle.is_empty() {
        None
    } else {
        Some(handle.into_bytes())
    };
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
        .spaces()
        .create_space(maybe_parent_id, maybe_handle, content, None)
        .sign_and_submit_then_watch(signer)
        .await?
        .wait_for_finalized_success()
        .await?
        .find_first_event::<spaces::events::SpaceCreated>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::SpaceCreated(SpaceCreated {
                space_id: event.1,
                account_id: event.0.to_ss58check_with_version(
                    Ss58AddressFormatRegistry::SubsocialAccount.into(),
                ),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Created Event Not Found"),
        }),
    }
}

pub async fn update_space(
    api: &SubsocialApi,
    signer: &mut Signer,
    UpdateSpace { space_id, update }: UpdateSpace,
) -> Result<ResponseBody, Error> {
    // increment the signer nonce
    signer.increment_nonce();
    let update = match update {
        Some(val) => val.into(),
        None => {
            return Err(Error {
                kind: error::Kind::InvalidRequest.into(),
                msg: String::from("Missing update value"),
            })
        }
    };

    let maybe_event = api
        .tx()
        .spaces()
        .update_space(space_id, update)
        .sign_and_submit_then_watch(signer)
        .await?
        .wait_for_finalized_success()
        .await?
        .find_first_event::<spaces::events::SpaceUpdated>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::SpaceUpdated(SpaceUpdated {
                space_id: event.1,
                account_id: event.0.to_ss58check_with_version(
                    Ss58AddressFormatRegistry::SubsocialAccount.into(),
                ),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Updated Event Not Found"),
        }),
    }
}
