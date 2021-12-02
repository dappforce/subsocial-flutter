use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::SubsocialApi;

pub async fn account(
    api: &SubsocialApi,
    account_id: String,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let account_info = api.storage().system().account(account_id, None).await?;
    let account_data = account_info.data;
    let body = ResponseBody::AccountData(AccountData {
        free_balance: account_data.free.to_string(),
        reserved_balance: account_data.reserved.to_string(),
        fee_frozen_balance: account_data.fee_frozen.to_string(),
        misc_frozen_balance: account_data.misc_frozen.to_string(),
    });
    Ok(body)
}

pub fn properties(api: &SubsocialApi) -> Result<ResponseBody, Error> {
    let props = api.client.properties();
    let body = ResponseBody::SystemProperties(SystemProperties {
        ss58_format: props.ss58_format as _,
        token_decimals: props.token_decimals as _,
        token_symbol: props.token_symbol.to_string(),
    });
    Ok(body)
}
