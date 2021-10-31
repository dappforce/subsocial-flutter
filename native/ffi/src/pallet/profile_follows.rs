use sdk::pallet::profile_follows;
use sdk::subxt::sp_core::crypto::{Ss58AddressFormat, Ss58Codec};
use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::SubsocialClient;

pub async fn account_followers(
    client: &SubsocialClient,
    account_id: String,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let store = profile_follows::AccountFollowersStore::new(account_id);
    let maybe_account_ids = client.fetch(&store, None).await?;
    match maybe_account_ids {
        Some(account_ids) => {
            let body = ResponseBody::AccountFollowers(AccountFollowers {
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
            msg: String::from("AccountId Not Found"),
        }),
    }
}

pub async fn accounts_followed_by_account(
    client: &SubsocialClient,
    account_id: String,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let store =
        profile_follows::AccountsFollowedByAccountStore::new(account_id);
    let maybe_account_ids = client.fetch(&store, None).await?;
    match maybe_account_ids {
        Some(account_ids) => {
            let body = ResponseBody::AccountsFollowedByAccount(
                AccountsFollowedByAccount {
                    account_ids: account_ids
                        .into_iter()
                        .map(|v| {
                            v.to_ss58check_with_version(
                                Ss58AddressFormat::SubsocialAccount,
                            )
                        })
                        .collect(),
                },
            );
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("AccountId Not Found"),
        }),
    }
}
