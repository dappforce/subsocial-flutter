use codec::{Decode, Encode};
use subxt::balances::*;
use subxt::system::*;

use super::spaces::*;

#[subxt::module]
pub trait SpaceFollows: System + Balances + Spaces {}

// Storage ..

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct SpaceFollowersStore<T: SpaceFollows> {
    #[store(returns = Vec<T::AccountId>)]
    space_id: T::SpaceId,
}

impl<T: SpaceFollows> SpaceFollowersStore<T> {
    pub fn new(space_id: T::SpaceId) -> Self {
        Self { space_id }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct SpacesFollowedByAccountStore<T: SpaceFollows> {
    #[store(returns = Vec<T::SpaceId>)]
    account_id: T::AccountId,
}

impl<T: SpaceFollows> SpacesFollowedByAccountStore<T> {
    pub fn new(account_id: T::AccountId) -> Self {
        Self { account_id }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct SpaceFollowedByAccountStore<T: SpaceFollows> {
    #[store(returns = bool)]
    account_id: T::AccountId,
    space_id: T::SpaceId,
}

impl<T: SpaceFollows> SpaceFollowedByAccountStore<T> {
    pub fn new(account_id: T::AccountId, space_id: T::SpaceId) -> Self {
        Self {
            account_id,
            space_id,
        }
    }
}

// Calls ..

#[derive(Clone, Encode, Eq, PartialEq, subxt::Call)]
pub struct FollowSpaceCall<T: SpaceFollows> {
    space_id: T::SpaceId,
}

// Events ..

#[derive(Clone, Debug, Encode, Decode, Eq, PartialEq, subxt::Event)]
pub struct SpaceFollowedEvent<T: SpaceFollows> {
    pub follower: T::AccountId,
    pub space_id: T::SpaceId,
}
