use sdk::pallet::spaces;
use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::AccountIdFromString;
use crate::SubsocialClient;

pub async fn next_space_id(
    client: &SubsocialClient,
) -> Result<ResponseBody, Error> {
    let store = spaces::NextSpaceIdStore::default();
    let maybe_id = client.fetch(&store, None).await?;
    match maybe_id {
        Some(id) => Ok(ResponseBody::NextSpaceId(NextSpaceId { id })),
        None => Ok(ResponseBody::NextSpaceId(Default::default())),
    }
}

pub async fn space_by_id(
    client: &SubsocialClient,
    space_id: u64,
) -> Result<ResponseBody, Error> {
    let store = spaces::SpaceByIdStore::new(space_id);
    let maybe_space = client.fetch(&store, None).await?;
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
    client: &SubsocialClient,
    handle: String,
) -> Result<ResponseBody, Error> {
    let store = spaces::SpaceIdByHandleStore::new(handle);
    let maybe_space_id = client.fetch(&store, None).await?;
    match maybe_space_id {
        Some(space_id) => {
            let body = space_by_id(client, space_id).await?;
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
    client: &SubsocialClient,
    account_id: String,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let store = spaces::SpaceIdsByOwnerStore::new(account_id);
    let maybe_ids = client.fetch(&store, None).await?;
    match maybe_ids {
        Some(space_ids) => {
            let body =
                ResponseBody::SpaceIdsByOwner(SpaceIdsByOwner { space_ids });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("AccountId Not Found"),
        }),
    }
}
