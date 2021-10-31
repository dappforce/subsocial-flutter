use sdk::pallet::space_follows;
use sdk::subxt::sp_core::crypto::{Ss58AddressFormat, Ss58Codec};
use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::SubsocialClient;

pub async fn space_followers(
    client: &SubsocialClient,
    space_id: u64,
) -> Result<ResponseBody, Error> {
    let store = space_follows::SpaceFollowersStore::new(space_id);
    let maybe_account_ids = client.fetch(&store, None).await?;
    match maybe_account_ids {
        Some(account_ids) => {
            let body = ResponseBody::SpaceFollowers(SpaceFollowers {
                account_ids: account_ids
                    .into_iter()
                    .map(|v| {
                        v.to_ss58check_with_version(
                            Ss58AddressFormat::SubsocialAccount,
                        )
                    })
                    .collect(),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Not Found"),
        }),
    }
}

pub async fn spaces_followed_by_account(
    client: &SubsocialClient,
    account_id: String,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let store = space_follows::SpacesFollowedByAccountStore::new(account_id);
    let maybe_space_ids = client.fetch(&store, None).await?;
    match maybe_space_ids {
        Some(space_ids) => Ok(ResponseBody::SpacesFollowedByAccount(
            SpacesFollowedByAccount { space_ids },
        )),
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("AccountId Not Found"),
        }),
    }
}
