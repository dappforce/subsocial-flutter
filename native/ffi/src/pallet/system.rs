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
    #[derive(Debug, serde::Serialize, serde::Deserialize)]
    #[serde(rename_all = "camelCase")]
    struct SubsocialSystemProperties {
        token_decimals: [u8; 1],
        token_symbol: [String; 1],
        ss58_format: u32,
    }

    impl Default for SubsocialSystemProperties {
        fn default() -> Self {
            Self {
                token_decimals: [11],
                token_symbol: ["SUB".into()],
                ss58_format: 28,
            }
        }
    }
    let props: SubsocialSystemProperties = serde_json::from_value(
        serde_json::Value::Object(api.client.properties().clone()),
    )
    .unwrap_or_default();
    let body = ResponseBody::SystemProperties(SystemProperties {
        ss58_format: props.ss58_format,
        token_decimals: props.token_decimals[0] as _,
        token_symbol: props.token_symbol[0].clone(),
    });
    Ok(body)
}
