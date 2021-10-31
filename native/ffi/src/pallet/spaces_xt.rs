use sdk::pallet::spaces::*;
use sdk::subxt::sp_core::crypto::{Ss58AddressFormat, Ss58Codec};

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::{Signer, SubsocialClient};

pub async fn create_space(
    client: &SubsocialClient,
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

    let maybe_event = client
        .create_space_and_watch(
            signer,
            maybe_parent_id,
            maybe_handle,
            content,
            None,
        )
        .await?
        .find_event::<SpaceCreatedEvent<_>>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::SpaceCreated(SpaceCreated {
                space_id: event.space_id,
                account_id: event.account_id.to_ss58check_with_version(
                    Ss58AddressFormat::SubsocialAccount,
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
    client: &SubsocialClient,
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

    let maybe_event = client
        .update_space_and_watch(signer, space_id, update)
        .await?
        .find_event::<SpaceUpdatedEvent<_>>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::SpaceUpdated(SpaceUpdated {
                space_id: event.space_id,
                account_id: event.account_id.to_ss58check_with_version(
                    Ss58AddressFormat::SubsocialAccount,
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
