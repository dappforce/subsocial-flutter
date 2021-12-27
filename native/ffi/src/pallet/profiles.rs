use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::SubsocialApi;

pub async fn social_account_by_account_id(
    api: &SubsocialApi,
    account_id: String,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let maybe_account = api
        .storage()
        .profiles()
        .social_account_by_id(account_id, None)
        .await?;
    match maybe_account {
        Some(account) => {
            let body = ResponseBody::SocialAccountByAccountId(
                SocialAccountByAccountId {
                    social_account: Some(account.into()),
                },
            );
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Social Account Not Found"),
        }),
    }
}
