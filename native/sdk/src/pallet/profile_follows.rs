use codec::Encode;
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
