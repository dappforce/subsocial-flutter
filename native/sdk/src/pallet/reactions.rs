use std::fmt;
use std::marker::PhantomData;

use codec::{Decode, Encode};
use subxt::system::*;

use super::posts::PostId;
use super::utils::WhoAndWhen;

#[subxt::module]
pub trait Reactions: System {}

pub type ReactionId = u64;

#[derive(Encode, Decode, Clone, Copy, Eq, PartialEq, Debug)]
pub enum ReactionKind {
    Upvote,
    Downvote,
}

#[derive(Encode, Decode, Clone, Eq, PartialEq, Debug)]
pub struct Reaction<T: Reactions> {
    pub id: ReactionId,
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
        write!(f, "Reaction #{} {}", self.id, emo)?;
        Ok(())
    }
}

// Storage ..

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct ReactionByIdStore<T: Reactions> {
    #[store(returns = Reaction<T>)]
    reaction_id: ReactionId,
    __marker: PhantomData<T>,
}

impl<T: Reactions> ReactionByIdStore<T> {
    pub fn new(reaction_id: ReactionId) -> Self {
        Self {
            reaction_id,
            __marker: Default::default(),
        }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct ReactionIdsByPostIdStore<T: Reactions> {
    #[store(returns = Vec<ReactionId>)]
    post_id: PostId,
    __marker: PhantomData<T>,
}

impl<T: Reactions> ReactionIdsByPostIdStore<T> {
    pub fn new(post_id: PostId) -> Self {
        Self {
            post_id,
            __marker: Default::default(),
        }
    }
}
