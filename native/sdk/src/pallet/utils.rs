use std::fmt;

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
    /// IPFS CID as a String.
    IPFS(Vec<u8>),
    /// Hypercore protocol (former DAT) id of content.
    Hyper(Vec<u8>),
}

impl fmt::Display for Content {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        use Content::*;
        match self {
            None => write!(f, "none"),
            Raw(_) => write!(f, "<RAW_BYTES>"),
            IPFS(v) => {
                write!(f, "{}", String::from_utf8(v.clone()).unwrap())
            },
            Hyper(_) => write!(f, "<Hyper>"),
        }
    }
}
