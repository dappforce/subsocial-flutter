use std::fmt;
use std::marker::PhantomData;

use codec::{Decode, Encode};
use subxt::system::*;

use super::utils::{Content, SpaceId, WhoAndWhen};

#[subxt::module]
pub trait Posts: System {}

pub type PostId = u64;

#[derive(Encode, Decode, Clone, Eq, PartialEq, Debug)]
pub struct Post<T: Posts> {
    pub id: PostId,
    pub created: WhoAndWhen<T>,
    pub updated: Option<WhoAndWhen<T>>,
    pub owner: T::AccountId,
    pub extension: PostExtension,
    pub space_id: Option<SpaceId>,
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
        write!(f, "Post #{} on IPFS: {}", self.id, self.content)?;
        Ok(())
    }
}

#[derive(Encode, Decode, Clone, Copy, Eq, PartialEq, Debug)]
pub enum PostExtension {
    RegularPost,
    Comment(Comment),
    SharedPost(PostId),
}

#[derive(Encode, Decode, Clone, Copy, Eq, PartialEq, Debug)]
pub struct Comment {
    pub parent_id: Option<PostId>,
    pub root_post_id: PostId,
}

// Storage ..

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct PostByIdStore<T: Posts> {
    #[store(returns = Post<T>)]
    post_id: PostId,
    __marker: PhantomData<T>,
}

impl<T: Posts> PostByIdStore<T> {
    pub fn new(post_id: PostId) -> Self {
        Self {
            post_id,
            __marker: Default::default(),
        }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct PostIdsBySpaceIdStore<T: Posts> {
    #[store(returns = Vec<PostId>)]
    space_id: SpaceId,
    __marker: PhantomData<T>,
}

impl<T: Posts> PostIdsBySpaceIdStore<T> {
    pub fn new(space_id: SpaceId) -> Self {
        Self {
            space_id,
            __marker: Default::default(),
        }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct ReplyIdsByPostIdStore<T: Posts> {
    #[store(returns = Vec<PostId>)]
    post_id: PostId,
    __marker: PhantomData<T>,
}

impl<T: Posts> ReplyIdsByPostIdStore<T> {
    pub fn new(post_id: PostId) -> Self {
        Self {
            post_id,
            __marker: Default::default(),
        }
    }
}
