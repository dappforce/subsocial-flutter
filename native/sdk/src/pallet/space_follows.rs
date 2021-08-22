use codec::Encode;
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
