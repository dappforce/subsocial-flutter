use sdk::subsocial::reactions;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::{Signer, SubsocialApi};

pub async fn create_post_reaction(
    api: &SubsocialApi,
    signer: &mut Signer,
    CreatePostReaction { post_id, kind }: CreatePostReaction,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let kind = reaction::Kind::from_i32(kind).unwrap_or_default();
    let maybe_event = api
        .tx()
        .reactions()
        .create_post_reaction(post_id, kind.into())
        .sign_and_submit_then_watch(signer)
        .await?
        .wait_for_finalized_success()
        .await?
        .find_first_event::<reactions::events::PostReactionCreated>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::PostReactionCreated(PostReactionCreated {
                post_id,
                reaction_id: event.2,
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Reaction Created Event Not Found"),
        }),
    }
}

pub async fn update_post_reaction(
    api: &SubsocialApi,
    signer: &mut Signer,
    UpdatePostReaction {
        post_id,
        reaction_id,
        new_kind,
    }: UpdatePostReaction,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let kind = reaction::Kind::from_i32(new_kind).unwrap_or_default();
    let maybe_event = api
        .tx()
        .reactions()
        .update_post_reaction(post_id, reaction_id, kind.into())
        .sign_and_submit_then_watch(signer)
        .await?
        .wait_for_finalized_success()
        .await?
        .find_first_event::<reactions::events::PostReactionUpdated>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::PostReactionUpdated(PostReactionUpdated {
                post_id,
                reaction_id: event.2,
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Reaction Updated Event Not Found"),
        }),
    }
}

pub async fn delete_post_reaction(
    api: &SubsocialApi,
    signer: &mut Signer,
    DeletePostReaction {
        post_id,
        reaction_id,
    }: DeletePostReaction,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let maybe_event = api
        .tx()
        .reactions()
        .delete_post_reaction(post_id, reaction_id)
        .sign_and_submit_then_watch(signer)
        .await?
        .wait_for_finalized_success()
        .await?
        .find_first_event::<reactions::events::PostReactionDeleted>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::PostReactionDeleted(PostReactionDeleted {
                post_id,
                reaction_id: event.2,
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Reaction Deletedd Event Not Found"),
        }),
    }
}
