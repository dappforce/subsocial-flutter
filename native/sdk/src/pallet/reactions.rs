use std::fmt;

use codec::{Decode, Encode};
use subxt::balances::*;
use subxt::system::*;

use super::posts::*;
use super::utils::WhoAndWhen;

#[subxt::module]
pub trait Reactions: System + Balances + Posts {
    type ReactionId: From<u64>
        + Into<u64>
        + Default
        + Encode
        + Decode
        + Copy
        + Clone
        + Send
        + Sync
        + 'static;
}

pub type ReactionId = u64;

#[derive(Encode, Decode, Clone, Copy, Eq, PartialEq, Debug)]
pub enum ReactionKind {
    Upvote,
    Downvote,
}

#[derive(Encode, Decode, Clone, Eq, PartialEq, Debug)]
pub struct Reaction<T: Reactions> {
    pub id: T::ReactionId,
    pub created: WhoAndWhen<T>,
    pub updated: Option<WhoAndWhen<T>>,
    pub kind: ReactionKind,
}

impl<T: Reactions> fmt::Display for Reaction<T> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let emo = match self.kind {
            ReactionKind::Upvote => "👍",
            ReactionKind::Downvote => "👎",
        };
        write!(f, "Reaction #{} {}", self.id.into(), emo)?;
        Ok(())
    }
}

// Storage ..

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct ReactionByIdStore<T: Reactions> {
    #[store(returns = Reaction<T>)]
    reaction_id: T::ReactionId,
}

impl<T: Reactions> ReactionByIdStore<T> {
    pub fn new(reaction_id: T::ReactionId) -> Self {
        Self { reaction_id }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct ReactionIdsByPostIdStore<T: Reactions> {
    #[store(returns = Vec<T::ReactionId>)]
    post_id: T::PostId,
}

impl<T: Reactions> ReactionIdsByPostIdStore<T> {
    pub fn new(post_id: T::PostId) -> Self {
        Self { post_id }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct PostReactionIdByAccountStore<T: Reactions> {
    #[store(returns = T::ReactionId)]
    key: (T::AccountId, T::PostId),
}

impl<T: Reactions> PostReactionIdByAccountStore<T> {
    pub fn new(account_id: T::AccountId, post_id: T::PostId) -> Self {
        Self {
            key: (account_id, post_id),
        }
    }
}

// Calls ..

#[derive(Clone, Debug, Encode, Eq, PartialEq, subxt::Call)]
pub struct CreatePostReactionCall<T: Reactions> {
    post_id: T::PostId,
    kind: ReactionKind,
}

#[derive(Clone, Debug, Encode, Eq, PartialEq, subxt::Call)]
pub struct UpdatePostReactionCall<T: Reactions> {
    post_id: T::PostId,
    reaction_id: T::ReactionId,
    new_kind: ReactionKind,
}

#[derive(Clone, Debug, Encode, Eq, PartialEq, subxt::Call)]
pub struct DeletePostReactionCall<T: Reactions> {
    post_id: T::PostId,
    reaction_id: T::ReactionId,
}

// Events ..

#[derive(Clone, Debug, Encode, Decode, Eq, PartialEq, subxt::Event)]
pub struct PostReactionCreatedEvent<T: Reactions> {
    pub account_id: T::AccountId,
    pub post_id: T::PostId,
    pub reaction_id: T::ReactionId,
}

#[derive(Clone, Debug, Encode, Decode, Eq, PartialEq, subxt::Event)]
pub struct PostReactionUpdatedEvent<T: Reactions> {
    pub account_id: T::AccountId,
    pub post_id: T::PostId,
    pub reaction_id: T::ReactionId,
}

#[derive(Clone, Debug, Encode, Decode, Eq, PartialEq, subxt::Event)]
pub struct PostReactionDeletedEvent<T: Reactions> {
    pub account_id: T::AccountId,
    pub post_id: T::PostId,
    pub reaction_id: T::ReactionId,
}
