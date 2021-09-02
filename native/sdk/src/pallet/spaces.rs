use std::fmt;
use std::marker::PhantomData;

use codec::{Decode, Encode};
use subxt::balances::*;
use subxt::system::*;

use super::permissions::SpacePermissions;
use super::utils::{Content, WhoAndWhen};

#[subxt::module]
pub trait Spaces: System + Balances {
    type SpaceId: Into<u64>
        + From<u64>
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
pub struct Space<T: Spaces> {
    pub id: T::SpaceId,
    pub created: WhoAndWhen<T>,
    pub updated: Option<WhoAndWhen<T>>,
    pub owner: T::AccountId,
    pub parent_id: Option<T::SpaceId>,
    pub handle: Option<Vec<u8>>,
    pub content: Content,
    pub hidden: bool,
    pub posts_count: u32,
    pub hidden_posts_count: u32,
    pub followers_count: u32,
    pub score: i32,
    pub permissions: Option<SpacePermissions>,
}

impl<T: Spaces> fmt::Display for Space<T> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let id: u64 = self.id.into();
        write!(
            f,
            "Space #{} with #{} Posts on IPFS: {}",
            id, self.posts_count, self.content
        )?;
        Ok(())
    }
}

// Storage ..

#[derive(Clone, Debug, Eq, Default, Encode, PartialEq, subxt::Store)]
pub struct NextSpaceIdStore<T: Spaces> {
    #[store(returns = T::SpaceId)]
    __marker: PhantomData<T>,
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct SpaceByIdStore<T: Spaces> {
    #[store(returns = Space<T>)]
    space_id: T::SpaceId,
}

impl<T: Spaces> SpaceByIdStore<T> {
    pub fn new(space_id: T::SpaceId) -> Self {
        Self { space_id }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct SpaceIdByHandleStore<T: Spaces> {
    #[store(returns = T::SpaceId)]
    handle: Vec<u8>,
    __marker: PhantomData<T>,
}

impl<T: Spaces> SpaceIdByHandleStore<T> {
    pub fn new(handle: impl Into<Vec<u8>>) -> Self {
        Self {
            handle: handle.into(),
            __marker: Default::default(),
        }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct SpaceIdsByOwnerStore<T: Spaces> {
    #[store(returns = Vec<T::SpaceId>)]
    account_id: T::AccountId,
    __marker: PhantomData<T>,
}

impl<T: Spaces> SpaceIdsByOwnerStore<T> {
    pub fn new(account_id: T::AccountId) -> Self {
        Self {
            account_id,
            __marker: Default::default(),
        }
    }
}
