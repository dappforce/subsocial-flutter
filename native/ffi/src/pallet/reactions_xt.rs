use sdk::pallet::reactions::*;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::{Signer, SubsocialClient};

pub async fn create_post_reaction(
    client: &SubsocialClient,
    signer: &mut Signer,
    CreatePostReaction { post_id, kind }: CreatePostReaction,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let kind = reaction::Kind::from_i32(kind).unwrap_or_default();
    let maybe_event = client
        .create_post_reaction_and_watch(signer, post_id, kind.into())
        .await?
        .find_event::<PostReactionCreatedEvent<_>>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::PostReactionCreated(PostReactionCreated {
                post_id,
                reaction_id: event.reaction_id,
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
    client: &SubsocialClient,
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
    let maybe_event = client
        .update_post_reaction_and_watch(
            signer,
            post_id,
            reaction_id,
            kind.into(),
        )
        .await?
        .find_event::<PostReactionUpdatedEvent<_>>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::PostReactionUpdated(PostReactionUpdated {
                post_id,
                reaction_id: event.reaction_id,
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
    client: &SubsocialClient,
    signer: &mut Signer,
    DeletePostReaction {
        post_id,
        reaction_id,
    }: DeletePostReaction,
) -> Result<ResponseBody, Error> {
    // increment signer nonce
    signer.increment_nonce();
    let maybe_event = client
        .delete_post_reaction_and_watch(signer, post_id, reaction_id)
        .await?
        .find_event::<PostReactionDeletedEvent<_>>()?;
    match maybe_event {
        Some(event) => {
            let body = ResponseBody::PostReactionDeleted(PostReactionDeleted {
                post_id,
                reaction_id: event.reaction_id,
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Reaction Deletedd Event Not Found"),
        }),
    }
}
