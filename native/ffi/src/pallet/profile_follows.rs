use sdk::subxt::sp_core::crypto::{Ss58AddressFormatRegistry, Ss58Codec};
use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::SubsocialApi;

pub async fn account_followers(
    api: &SubsocialApi,
    account_id: String,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let account_ids = api
        .storage()
        .profile_follows()
        .account_followers(account_id, None)
        .await?;
    let body = ResponseBody::AccountFollowers(AccountFollowers {
        account_ids: account_ids
            .into_iter()
            .map(|v| {
                v.to_ss58check_with_version(
                    Ss58AddressFormatRegistry::SubsocialAccount.into(),
                )
            })
            .collect(),
    });
    Ok(body)
}

pub async fn accounts_followed_by_account(
    api: &SubsocialApi,
    account_id: String,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let account_ids = api
        .storage()
        .profile_follows()
        .accounts_followed_by_account(account_id, None)
        .await?;
    let body =
        ResponseBody::AccountsFollowedByAccount(AccountsFollowedByAccount {
            account_ids: account_ids
                .into_iter()
                .map(|v| {
                    v.to_ss58check_with_version(
                        Ss58AddressFormatRegistry::SubsocialAccount.into(),
                    )
                })
                .collect(),
        });
    Ok(body)
}
