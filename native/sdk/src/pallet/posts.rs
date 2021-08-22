use std::fmt;
use std::marker::PhantomData;

use codec::{Decode, Encode};
use subxt::balances::*;
use subxt::system::*;

use super::spaces::*;
use super::utils::{Content, WhoAndWhen};

#[subxt::module]
pub trait Posts: System + Balances + Spaces {
    type PostId: From<u64>
        + Into<u64>
        + Default
        + Eq
        + PartialEq
        + Encode
        + Decode
        + Copy
        + Clone
        + Send
        + Sync
        + 'static;
}

#[derive(Encode, Decode, Clone, Eq, PartialEq, Debug)]
pub struct Post<T: Posts> {
    pub id: T::PostId,
    pub created: WhoAndWhen<T>,
    pub updated: Option<WhoAndWhen<T>>,
    pub owner: T::AccountId,
    pub extension: PostExtension<T>,
    pub space_id: Option<T::SpaceId>,
    pub content: Content,
    pub hidden: bool,
    pub replies_count: u16,
    pub hidden_replies_count: u16,
    pub shares_count: u16,
    pub upvotes_count: u16,
    pub downvotes_count: u16,
    pub score: i32,
}

impl<T: Posts> fmt::Display for Post<T> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "Post #{} on IPFS: {}", self.id.into(), self.content)?;
        Ok(())
    }
}

#[derive(Encode, Decode, Clone, Copy, Eq, PartialEq, Debug)]
pub enum PostExtension<T: Posts> {
    RegularPost,
    Comment(Comment<T>),
    SharedPost(T::PostId),
}

#[derive(Encode, Decode, Clone, Copy, Eq, PartialEq, Debug)]
pub struct Comment<T: Posts> {
    pub parent_id: Option<T::PostId>,
    pub root_post_id: T::PostId,
}

#[derive(Encode, Decode, Clone, Eq, PartialEq, Debug)]
pub struct PostUpdate<T: Posts> {
    /// Deprecated: This field has no effect in `fn update_post()` extrinsic.
    /// See `fn move_post()` extrinsic if you want to move a post to another space.
    pub space_id: Option<T::SpaceId>,
    pub content: Option<Content>,
    pub hidden: Option<bool>,
}

impl<T: Posts> PostUpdate<T> {
    pub fn new(content: Option<Content>, hidden: Option<bool>) -> Self {
        Self {
            space_id: None,
            content,
            hidden,
        }
    }
}

// Storage ..

#[derive(Clone, Debug, Eq, Default, Encode, PartialEq, subxt::Store)]
pub struct NextPostIdStore<T: Posts> {
    #[store(returns = T::PostId)]
    __marker: PhantomData<T>,
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct PostByIdStore<T: Posts> {
    #[store(returns = Post<T>)]
    post_id: T::PostId,
}

impl<T: Posts> PostByIdStore<T> {
    pub fn new(post_id: T::PostId) -> Self {
        Self { post_id }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct PostIdsBySpaceIdStore<T: Posts> {
    #[store(returns = Vec<T::PostId>)]
    space_id: T::SpaceId,
}

impl<T: Posts> PostIdsBySpaceIdStore<T> {
    pub fn new(space_id: T::SpaceId) -> Self {
        Self { space_id }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct ReplyIdsByPostIdStore<T: Posts> {
    #[store(returns = Vec<T::PostId>)]
    post_id: T::PostId,
}

impl<T: Posts> ReplyIdsByPostIdStore<T> {
    pub fn new(post_id: T::PostId) -> Self {
        Self { post_id }
    }
}

#[derive(Clone, Encode, Eq, PartialEq, subxt::Call)]
pub struct CreatePostCall<T: Posts> {
    space_id: Option<T::SpaceId>,
    extension: PostExtension<T>,
    content: Content,
}

#[derive(Clone, Encode, Eq, PartialEq, subxt::Call)]
pub struct UpdatePostCall<T: Posts> {
    post_id: T::PostId,
    update: PostUpdate<T>,
}

// Events ..

#[derive(Clone, Debug, Encode, Decode, Eq, PartialEq, subxt::Event)]
pub struct PostCreatedEvent<T: Posts> {
    pub account_id: T::AccountId,
    pub post_id: T::PostId,
}

#[derive(Clone, Debug, Encode, Decode, Eq, PartialEq, subxt::Event)]
pub struct PostUpdatedEvent<T: Posts> {
    pub account_id: T::AccountId,
    pub post_id: T::PostId,
}
