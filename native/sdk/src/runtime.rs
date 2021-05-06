use subxt::balances::*;
use subxt::extrinsic::*;
use subxt::sp_core;
use subxt::sp_runtime::generic::Header;
use subxt::sp_runtime::traits::{BlakeTwo256, IdentifyAccount, Verify};
use subxt::sp_runtime::{MultiSignature, OpaqueExtrinsic};
use subxt::system::*;

use crate::pallet;

/// an easy way to extract the balance type from `T`
pub type BalanceOf<T> = <T as Balances>::Balance;

/// Alias to 512-bit hash when used in the context of a transaction signature on
/// the chain.
pub type Signature = MultiSignature;

/// Some way of identifying an account on the chain. We intentionally make it
/// equivalent to the public key of our transaction signing scheme.
pub type AccountId =
    <<Signature as Verify>::Signer as IdentifyAccount>::AccountId;

/// Balance of an account.
pub type Balance = u128;

/// Index of a transaction in the chain.
pub type Index = u32;

/// A hash of some data used by the chain.
pub type Hash = sp_core::H256;

/// Subsocial Runtime.
#[derive(Debug, Clone, Eq, PartialEq)]
pub struct SubsocialRuntime;

impl subxt::Runtime for SubsocialRuntime {
    type Extra = DefaultExtra<Self>;
    type Signature = Signature;
}

impl System for SubsocialRuntime {
    type AccountData = AccountData<BalanceOf<Self>>;
    type AccountId = AccountId;
    type Address = AccountId;
    type BlockNumber = u32;
    type Extrinsic = OpaqueExtrinsic;
    type Hash = Hash;
    type Hashing = BlakeTwo256;
    type Header = Header<Self::BlockNumber, BlakeTwo256>;
    type Index = Index;
}

impl Balances for SubsocialRuntime {
    type Balance = Balance;
}

impl pallet::spaces::Spaces for SubsocialRuntime {}

#[cfg(test)]
mod tests {
    use crate::pallet::spaces::*;

    use super::*;

    type SpaceById = SpaceByIdStore<SubsocialRuntime>;
    type SpaceIdByHandle = SpaceIdByHandleStore<SubsocialRuntime>;

    async fn get_client() -> subxt::Client<SubsocialRuntime> {
        subxt::ClientBuilder::new()
            .set_url("wss://rpc.subsocial.network")
            .build()
            .await
            .unwrap()
    }

    #[async_std::test]
    async fn connection() {
        let client = get_client().await;
        let props = client.properties();
        dbg!(props);
    }

    #[async_std::test]
    async fn space_by_id() {
        let client = get_client().await;
        let space_id = client
            .fetch(&SpaceIdByHandle::new("subsocial".into()), None)
            .await
            .unwrap()
            .unwrap_or(1);
        let space =
            client.fetch(&SpaceById::new(space_id), None).await.unwrap();
        dbg!(space);
    }
}
