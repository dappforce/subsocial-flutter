use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::SubsocialApi;

pub async fn next_space_id(api: &SubsocialApi) -> Result<ResponseBody, Error> {
    let id = api.storage().spaces().next_space_id(None).await?;
    Ok(ResponseBody::NextSpaceId(NextSpaceId { id }))
}

pub async fn space_by_id(
    api: &SubsocialApi,
    space_id: u64,
) -> Result<ResponseBody, Error> {
    let maybe_space =
        api.storage().spaces().space_by_id(space_id, None).await?;
    match maybe_space {
        Some(space) => {
            let body = ResponseBody::SpaceById(SpaceById {
                space: Some(space.into()),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Not Found"),
        }),
    }
}

pub async fn space_by_handle(
    api: &SubsocialApi,
    handle: String,
) -> Result<ResponseBody, Error> {
    let maybe_space_id = api
        .storage()
        .spaces()
        .space_id_by_handle(handle.into_bytes(), None)
        .await?;
    match maybe_space_id {
        Some(space_id) => {
            let body = space_by_id(api, space_id).await?;
            let space = match body {
                ResponseBody::SpaceById(space_by_id) => space_by_id.space,
                _ => unreachable!(),
            };
            let body = ResponseBody::SpaceByHandle(SpaceByHandle { space });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Not Found"),
        }),
    }
}

pub async fn space_ids_by_owner(
    api: &SubsocialApi,
    account_id: String,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let space_ids = api
        .storage()
        .spaces()
        .space_ids_by_owner(account_id, None)
        .await?;
    let body = ResponseBody::SpaceIdsByOwner(SpaceIdsByOwner { space_ids });
    Ok(body)
}
