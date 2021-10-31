use sdk::pallet::posts::*;
use sdk::subxt::sp_core::crypto::{Ss58AddressFormat, Ss58Codec};

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::{Signer, SubsocialClient};

pub async fn create_post(
    client: &SubsocialClient,
    signer: &mut Signer,
    CreatePost {
        space_id,
        extension_value,
        content,
    }: CreatePost,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let maybe_space_id = if space_id != 0 { Some(space_id) } else { None };
    let extension = match extension_value {
        Some(val) => val.into(),
        None => {
            return Err(Error {
                kind: error::Kind::InvalidRequest.into(),
                msg: String::from("Missing extension value"),
            })
        }
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
        .create_post_and_watch(signer, maybe_space_id, extension, content)
        .await?
        .find_event::<PostCreatedEvent<_>>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::PostCreated(PostCreated {
                post_id: event.post_id,
                account_id: event.account_id.to_ss58check_with_version(
                    Ss58AddressFormat::SubsocialAccount,
                ),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Created Event Not Found"),
        }),
    }
}

pub async fn update_post(
    client: &SubsocialClient,
    signer: &mut Signer,
    UpdatePost {
        post_id,
        post_update,
    }: UpdatePost,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let update = match post_update {
        Some(val) => val.into(),
        None => {
            return Err(Error {
                kind: error::Kind::InvalidRequest.into(),
                msg: String::from("Missing post update value"),
            })
        }
    };

    let maybe_event = client
        .update_post_and_watch(signer, post_id, update)
        .await?
        .find_event::<PostUpdatedEvent<_>>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::PostUpdated(PostUpdated {
                post_id: event.post_id,
                account_id: event.account_id.to_ss58check_with_version(
                    Ss58AddressFormat::SubsocialAccount,
                ),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Updated Event Not Found"),
        }),
    }
}
