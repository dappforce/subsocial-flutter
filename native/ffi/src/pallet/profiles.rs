use sdk::pallet::profiles;
use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::SubsocialClient;

pub async fn social_account_by_account_id(
    client: &SubsocialClient,
    account_id: String,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let store = profiles::SocialAccountByIdStore::new(account_id);
    let maybe_account = client.fetch(&store, None).await?;
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
