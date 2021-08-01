use std::marker::PhantomData;

use codec::Encode;
use subxt::system::*;

use super::utils::SpaceId;

#[subxt::module]
pub trait SpaceFollows: System {}

// Storage ..

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct SpaceFollowersStore<T: SpaceFollows> {
    #[store(returns = Vec<T::AccountId>)]
    space_id: SpaceId,
    __marker: PhantomData<T>,
}

impl<T: SpaceFollows> SpaceFollowersStore<T> {
    pub fn new(space_id: SpaceId) -> Self {
        Self {
            space_id,
            __marker: Default::default(),
        }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct SpacesFollowedByAccountStore<T: SpaceFollows> {
    #[store(returns = Vec<SpaceId>)]
    account_id: T::AccountId,
    __marker: PhantomData<T>,
}

impl<T: SpaceFollows> SpacesFollowedByAccountStore<T> {
    pub fn new(account_id: T::AccountId) -> Self {
        Self {
            account_id,
            __marker: Default::default(),
        }
    }
}
