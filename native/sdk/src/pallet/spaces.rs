use std::marker::PhantomData;

use codec::{Decode, Encode};
use subxt::system::*;

use super::permissions::SpacePermissions;
use super::utils::{Content, SpaceId, WhoAndWhen};

#[subxt::module]
pub trait Spaces: System {}

#[derive(Encode, Decode, Clone, Eq, PartialEq, Debug)]
pub struct Space<T: Spaces> {
    pub id: SpaceId,
    pub created: WhoAndWhen<T>,
    pub updated: Option<WhoAndWhen<T>>,
    pub owner: T::AccountId,
    pub parent_id: Option<SpaceId>,
    pub handle: Option<Vec<u8>>,
    pub content: Content,
    pub hidden: bool,
    pub posts_count: u32,
    pub hidden_posts_count: u32,
    pub followers_count: u32,
    pub score: i32,
    /// Allows to override the default permissions for this space.
    pub permissions: Option<SpacePermissions>,
}

// Storage ..

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct SpaceByIdStore<T: Spaces> {
    #[store(returns = Space<T>)]
    space_id: SpaceId,
    __marker: PhantomData<T>,
}

impl<T: Spaces> SpaceByIdStore<T> {
    pub fn new(space_id: SpaceId) -> Self {
        Self {
            space_id,
            __marker: Default::default(),
        }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct SpaceIdByHandleStore<T: Spaces> {
    #[store(returns = SpaceId)]
    handle: Vec<u8>,
    __marker: PhantomData<T>,
}

impl<T: Spaces> SpaceIdByHandleStore<T> {
    pub fn new(handle: Vec<u8>) -> Self {
        Self {
            handle,
            __marker: Default::default(),
        }
    }
}
