use prost::Message;
use sdk::pallet::*;
use sdk::runtime::SubsocialRuntime;
use sdk::subxt::sp_core::Pair;
use sdk::subxt::sp_runtime::AccountId32;
use sdk::subxt::Client;

use crate::pb::subsocial::request::Body as RequestBody;
use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::transformer::*;

pub async fn handle(
    client: &Client<SubsocialRuntime>,
    req: Request,
) -> Vec<u8> {
    let body = match req.body {
        Some(v) => v,
        None => {
            let mut bytes = Vec::new();
            let kind = error::Kind::InvalidRequest.into();
            Error {
                kind,
                msg: String::from("Empty body"),
            }
            .encode(&mut bytes)
            .expect("should never fails");
            return bytes;
        }
    };
    let result = match body {
        RequestBody::NextSpaceId(_) => next_space_id(client).await,
        RequestBody::NextPostId(_) => next_post_id(client).await,
        RequestBody::SpaceById(args) => {
            space_by_id(client, args.space_id).await
        }
        RequestBody::SpaceByHandle(args) => {
            space_by_handle(client, args.handle).await
        }
        RequestBody::SpaceIdsByOwner(args) => {
            space_ids_by_owner(client, args.account_id).await
        }
        RequestBody::PostIdsBySpaceId(args) => {
            posts_ids_by_space_id(client, args.space_id).await
        }
        RequestBody::PostById(args) => post_by_id(client, args.post_id).await,
        RequestBody::ReactionIdsByPostId(args) => {
            reactions_ids_by_post_id(client, args.post_id).await
        }
        RequestBody::ReactionById(args) => {
            reaction_by_id(client, args.reaction_id).await
        }
        RequestBody::ReplyIdsByPostId(args) => {
            reply_ids_by_post_id(client, args.post_id).await
        }
        RequestBody::SocialAccountByAccountId(args) => {
            social_account_by_account_id(client, args.account_id).await
        }
        RequestBody::SpaceFollowers(args) => {
            space_followers(client, args.space_id).await
        }
        RequestBody::SpacesFollowedByAccount(args) => {
            spaces_followed_by_account(client, args.account_id).await
        }
        RequestBody::AccountFollowers(args) => {
            account_followers(client, args.account_id).await
        }
        RequestBody::AccountsFollowedByAccount(args) => {
            accounts_followed_by_account(client, args.account_id).await
        }
        RequestBody::GenerateAccount(args) => generate_account(args),
        RequestBody::ImportAccount(args) => import_account(args),
    };
    let response = match result {
        Ok(body) => Response { body: Some(body) },
        Err(e) => Response {
            body: Some(ResponseBody::Error(e)),
        },
    };
    let mut buffer = Vec::new();
    response.encode(&mut buffer).expect("should never fails");
    buffer
}

async fn space_by_id(
    client: &Client<SubsocialRuntime>,
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

async fn space_by_handle(
    client: &Client<SubsocialRuntime>,
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

async fn space_ids_by_owner(
    client: &Client<SubsocialRuntime>,
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

async fn posts_ids_by_space_id(
    client: &Client<SubsocialRuntime>,
    space_id: u64,
) -> Result<ResponseBody, Error> {
    let store = posts::PostIdsBySpaceIdStore::new(space_id);
    let maybe_ids = client.fetch(&store, None).await?;
    match maybe_ids {
        Some(ids) => {
            let body = ResponseBody::PostIdsBySpaceId(PostIdsBySpaceId {
                post_ids: ids,
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Space Not Found"),
        }),
    }
}

async fn post_by_id(
    client: &Client<SubsocialRuntime>,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let store = posts::PostByIdStore::new(post_id);
    let maybe_post = client.fetch(&store, None).await?;
    match maybe_post {
        Some(post) => {
            let body = ResponseBody::PostById(PostById {
                post: Some(post.into()),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Not Found"),
        }),
    }
}

async fn reactions_ids_by_post_id(
    client: &Client<SubsocialRuntime>,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let store = reactions::ReactionIdsByPostIdStore::new(post_id);
    let maybe_ids = client.fetch(&store, None).await?;
    match maybe_ids {
        Some(ids) => {
            let body = ResponseBody::ReactionIdsByPostId(ReactionIdsByPostId {
                reaction_ids: ids,
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Not Found"),
        }),
    }
}

async fn reaction_by_id(
    client: &Client<SubsocialRuntime>,
    reaction_id: u64,
) -> Result<ResponseBody, Error> {
    let store = reactions::ReactionByIdStore::new(reaction_id);
    let maybe_reaction = client.fetch(&store, None).await?;
    match maybe_reaction {
        Some(reaction) => {
            let body = ResponseBody::ReactionById(ReactionById {
                reaction: Some(reaction.into()),
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Reaction Not Found"),
        }),
    }
}

async fn social_account_by_account_id(
    client: &Client<SubsocialRuntime>,
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

async fn reply_ids_by_post_id(
    client: &Client<SubsocialRuntime>,
    post_id: u64,
) -> Result<ResponseBody, Error> {
    let store = posts::ReplyIdsByPostIdStore::new(post_id);
    let maybe_ids = client.fetch(&store, None).await?;
    match maybe_ids {
        Some(ids) => {
            let body = ResponseBody::ReplyIdsByPostId(ReplyIdsByPostId {
                reply_ids: ids,
            });
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("Post Not Found"),
        }),
    }
}

async fn next_space_id(
    client: &Client<SubsocialRuntime>,
) -> Result<ResponseBody, Error> {
    let store = spaces::NextSpaceIdStore::default();
    let maybe_id = client.fetch(&store, None).await?;
    match maybe_id {
        Some(id) => {
            let body = ResponseBody::NextSpaceId(NextSpaceId { id });
            Ok(body)
        }
        None => unreachable!(),
    }
}

async fn next_post_id(
    client: &Client<SubsocialRuntime>,
) -> Result<ResponseBody, Error> {
    let store = posts::NextPostIdStore::default();
    let maybe_id = client.fetch(&store, None).await?;
    match maybe_id {
        Some(id) => {
            let body = ResponseBody::NextPostId(NextPostId { id });
            Ok(body)
        }
        None => unreachable!(),
    }
}

async fn space_followers(
    client: &Client<SubsocialRuntime>,
    space_id: u64,
) -> Result<ResponseBody, Error> {
    let store = space_follows::SpaceFollowersStore::new(space_id);
    let maybe_account_ids = client.fetch(&store, None).await?;
    match maybe_account_ids {
        Some(account_ids) => {
            let body = ResponseBody::SpaceFollowers(SpaceFollowers {
                account_ids: account_ids
                    .into_iter()
                    .map(|v| v.to_string())
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

async fn spaces_followed_by_account(
    client: &Client<SubsocialRuntime>,
    account_id: String,
) -> Result<ResponseBody, Error> {
    let account_id = AccountId32::convert(account_id)?;
    let store = space_follows::SpacesFollowedByAccountStore::new(account_id);
    let maybe_space_ids = client.fetch(&store, None).await?;
    match maybe_space_ids {
        Some(space_ids) => {
            let body = ResponseBody::SpacesFollowedByAccount(
                SpacesFollowedByAccount { space_ids },
            );
            Ok(body)
        }
        None => Err(Error {
            kind: error::Kind::NotFound.into(),
            msg: String::from("AccountId Not Found"),
        }),
    }
}

async fn account_followers(
    client: &Client<SubsocialRuntime>,
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
                    .map(|v| v.to_string())
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

async fn accounts_followed_by_account(
    client: &Client<SubsocialRuntime>,
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
                        .map(|v| v.to_string())
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

fn generate_account(
    GenerateAccount { password }: GenerateAccount,
) -> Result<ResponseBody, Error> {
    let (pair, seed_phrase, _) =
        crate::Sr25519Pair::generate_with_phrase(if password.is_empty() {
            None
        } else {
            Some(password.as_str())
        });
    let pair = crate::subxt::PairSigner::new(pair);
    let public_key = pair.signer().public().to_string();
    unsafe {
        let _old = crate::SIGNER.take();
        crate::SIGNER
            .set(pair)
            .map_err(|_| ())
            .expect("should never happen");
    };
    let body = ResponseBody::GeneratedAccount(GeneratedAccount {
        seed_phrase,
        public_key,
    });
    Ok(body)
}

fn import_account(
    ImportAccount { password, suri }: ImportAccount,
) -> Result<ResponseBody, Error> {
    let (pair, _) = crate::Sr25519Pair::from_string_with_seed(
        &suri,
        if password.is_empty() {
            None
        } else {
            Some(password.as_str())
        },
    )
    .map_err(|_| {
        // TODO(shekohex): handle each case of this error with proper error message.
        crate::subxt::Error::Other(String::from("Invalid Phrase Format"))
    })?;
    let pair = crate::subxt::PairSigner::new(pair);
    let public_key = pair.signer().public().to_string();
    unsafe {
        let _old = crate::SIGNER.take();
        crate::SIGNER
            .set(pair)
            .map_err(|_| ())
            .expect("should never happen");
    };
    let body = ResponseBody::ImportedAccount(ImportedAccount { public_key });
    Ok(body)
}
