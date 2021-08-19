use std::marker::PhantomData;

use codec::{Decode, Encode};
use subxt::system::*;

use super::utils::{Content, WhoAndWhen};

#[subxt::module]
pub trait Profiles: System {}

#[derive(Encode, Decode, Clone, Eq, PartialEq, Debug)]
pub struct SocialAccount<T: Profiles> {
    pub followers_count: u32,
    pub following_accounts_count: u16,
    pub following_spaces_count: u16,
    pub reputation: u32,
    pub profile: Option<Profile<T>>,
}

#[derive(Encode, Decode, Clone, Eq, PartialEq, Debug)]
pub struct Profile<T: Profiles> {
    pub created: WhoAndWhen<T>,
    pub updated: Option<WhoAndWhen<T>>,
    pub content: Content,
}

// Storage ..

#[derive(Clone, Debug, Eq, Encode, PartialEq, subxt::Store)]
pub struct SocialAccountByIdStore<T: Profiles> {
    #[store(returns = SocialAccount<T>)]
    account_id: T::AccountId,
    __marker: PhantomData<T>,
}

impl<T: Profiles> SocialAccountByIdStore<T> {
    pub fn new(account_id: T::AccountId) -> Self {
        Self {
            account_id,
            __marker: Default::default(),
        }
    }
}
