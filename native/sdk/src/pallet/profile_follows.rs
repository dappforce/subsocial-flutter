use codec::{Decode, Encode};
use subxt::system::*;

#[subxt::module]
pub trait ProfileFollows: System {}

// Storage ..

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct AccountFollowersStore<T: ProfileFollows> {
    #[store(returns = Vec<T::AccountId>)]
    account_id: T::AccountId,
}

impl<T: ProfileFollows> AccountFollowersStore<T> {
    pub fn new(account_id: T::AccountId) -> Self {
        Self { account_id }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct AccountsFollowedByAccountStore<T: ProfileFollows> {
    #[store(returns = Vec<T::AccountId>)]
    account_id: T::AccountId,
}

impl<T: ProfileFollows> AccountsFollowedByAccountStore<T> {
    pub fn new(account_id: T::AccountId) -> Self {
        Self { account_id }
    }
}

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct AccountFollowedByAccountStore<T: ProfileFollows> {
    #[store(returns = bool)]
    account_one_id: T::AccountId,
    account_two_id: T::AccountId,
}

impl<T: ProfileFollows> AccountFollowedByAccountStore<T> {
    pub fn new(
        account_one_id: T::AccountId,
        account_two_id: T::AccountId,
    ) -> Self {
        Self {
            account_one_id,
            account_two_id,
        }
    }
}

// Calls ...

#[derive(Clone, Encode, Eq, PartialEq, subxt::Call)]
pub struct FollowAccountCall<T: ProfileFollows> {
    account: T::AccountId,
}

#[derive(Clone, Encode, Eq, PartialEq, subxt::Call)]
pub struct UnfollowAccountCall<T: ProfileFollows> {
    account: T::AccountId,
}

// Events ...

#[derive(Clone, Debug, Encode, Decode, Eq, PartialEq, subxt::Event)]
pub struct AccountFollowedEvent<T: ProfileFollows> {
    pub follower: T::AccountId,
    pub following: T::AccountId,
}

#[derive(Clone, Debug, Encode, Decode, Eq, PartialEq, subxt::Event)]
pub struct AccountUnfollowedEvent<T: ProfileFollows> {
    pub follower: T::AccountId,
    pub unfollowing: T::AccountId,
}
