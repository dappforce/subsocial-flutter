use codec::{Decode, Encode};

use sp_std::prelude::*;
use subxt::system::System;

pub type SpaceId = u64;

#[derive(Encode, Decode, Clone, Eq, PartialEq, Debug)]
pub struct WhoAndWhen<T: System> {
    pub account: T::AccountId,
    pub block: T::BlockNumber,
    pub time: u64,
}

#[derive(Encode, Decode, Ord, PartialOrd, Clone, Eq, PartialEq, Debug)]
pub enum User<AccountId> {
    Account(AccountId),
    Space(SpaceId),
}

#[derive(Encode, Decode, Clone, Eq, PartialEq, Debug)]
pub enum Content {
    /// No content.
    None,
    /// A raw vector of bytes.
    Raw(Vec<u8>),
    /// IPFS CID v0 of content.
    IPFS(Vec<u8>),
    /// Hypercore protocol (former DAT) id of content.
    Hyper(Vec<u8>),
}
