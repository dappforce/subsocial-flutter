use sdk::subsocial::posts;
use sdk::subxt::sp_core::crypto::{Ss58AddressFormatRegistry, Ss58Codec};

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::{Signer, SubsocialApi};

pub async fn create_post(
    api: &SubsocialApi,
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

    let maybe_event = api
        .tx()
        .posts()
        .create_post(maybe_space_id, extension, content)
        .sign_and_submit_then_watch(signer)
        .await?
        .wait_for_finalized_success()
        .await?
        .find_first_event::<posts::events::PostCreated>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::PostCreated(PostCreated {
                post_id: event.1,
                account_id: event.0.to_ss58check_with_version(
                    Ss58AddressFormatRegistry::SubsocialAccount.into(),
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
    api: &SubsocialApi,
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

    let maybe_event = api
        .tx()
        .posts()
        .update_post(post_id, update)
        .sign_and_submit_then_watch(signer)
        .await?
        .wait_for_finalized_success()
        .await?
        .find_first_event::<posts::events::PostUpdated>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::PostUpdated(PostUpdated {
                post_id: event.1,
                account_id: event.0.to_ss58check_with_version(
                    Ss58AddressFormatRegistry::SubsocialAccount.into(),
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
