use allo_isolate::ZeroCopyBuffer;
use prost::Message;
use sdk::subxt::sp_core::crypto::Ss58AddressFormatRegistry;
use sdk::subxt::sp_core::crypto::Ss58Codec;
use sdk::subxt::sp_core::Pair;

use crate::pallet::{
    posts, posts_xt, profile_follows, profile_follows_xt, profiles,
    profiles_xt, reactions, reactions_xt, space_follows, space_follows_xt,
    spaces, spaces_xt, system,
};
use crate::pb::subsocial::request::Body as RequestBody;
use crate::pb::subsocial::response::Body as ResponseBody;
use crate::pb::subsocial::*;
use crate::{Signer, SubsocialApi};

pub async fn handle(
    client: &SubsocialApi,
    signer: &mut Signer,
    req: Request,
) -> ZeroCopyBuffer<Vec<u8>> {
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
            return ZeroCopyBuffer(bytes);
        }
    };
    let result = match body {
        // Account (Generate & Import)
        RequestBody::GenerateAccount(args) => generate_account(args),
        RequestBody::ImportAccount(args) => import_account(args),
        RequestBody::CurrentAccountId(_) => current_account_id(signer),
        // System pallet.
        RequestBody::SystemProperties(_) => system::properties(client),
        RequestBody::QueryAccountData(args) => {
            system::account(client, args.account_id).await
        }
        // Spaces pallet.
        RequestBody::NextSpaceId(_) => spaces::next_space_id(client).await,
        RequestBody::SpaceById(args) => {
            spaces::space_by_id(client, args.space_id).await
        }
        RequestBody::SpaceByHandle(args) => {
            spaces::space_by_handle(client, args.handle).await
        }
        RequestBody::SpaceIdsByOwner(args) => {
            spaces::space_ids_by_owner(client, args.account_id).await
        }
        RequestBody::CreateSpace(args) => {
            spaces_xt::create_space(client, signer, args).await
        }
        RequestBody::UpdateSpace(args) => {
            spaces_xt::update_space(client, signer, args).await
        }
        // Posts pallet.
        RequestBody::NextPostId(_) => posts::next_post_id(client).await,
        RequestBody::PostById(args) => {
            posts::post_by_id(client, args.post_id).await
        }
        RequestBody::PostIdsBySpaceId(args) => {
            posts::posts_ids_by_space_id(client, args.space_id).await
        }
        RequestBody::ReplyIdsByPostId(args) => {
            posts::reply_ids_by_post_id(client, args.post_id).await
        }
        RequestBody::CreatePost(args) => {
            posts_xt::create_post(client, signer, args).await
        }
        RequestBody::UpdatePost(args) => {
            posts_xt::update_post(client, signer, args).await
        }
        // Reactions pallet.
        RequestBody::ReactionIdsByPostId(args) => {
            reactions::reactions_ids_by_post_id(client, args.post_id).await
        }
        RequestBody::ReactionById(args) => {
            reactions::reaction_by_id(client, args.reaction_id).await
        }
        RequestBody::PostReactionIdByAccount(args) => {
            reactions::post_reaction_id_by_account(client, args).await
        }
        RequestBody::CreatePostReaction(args) => {
            reactions_xt::create_post_reaction(client, signer, args).await
        }
        RequestBody::UpdatePostReaction(args) => {
            reactions_xt::update_post_reaction(client, signer, args).await
        }
        RequestBody::DeletePostReaction(args) => {
            reactions_xt::delete_post_reaction(client, signer, args).await
        }
        // Profiles pallet.
        RequestBody::SocialAccountByAccountId(args) => {
            profiles::social_account_by_account_id(client, args.account_id)
                .await
        }
        RequestBody::CreateProfile(args) => {
            profiles_xt::create_profile(client, signer, args).await
        }
        RequestBody::UpdateProfile(args) => {
            profiles_xt::update_profile(client, signer, args).await
        }
        // Space follows pallet.
        RequestBody::SpaceFollowers(args) => {
            space_follows::space_followers(client, args.space_id).await
        }
        RequestBody::SpacesFollowedByAccount(args) => {
            space_follows::spaces_followed_by_account(client, args.account_id)
                .await
        }
        RequestBody::FollowSpace(args) => {
            space_follows_xt::follow_space(client, signer, args).await
        }
        RequestBody::UnfollowSpace(args) => {
            space_follows_xt::unfollow_space(client, signer, args).await
        }
        RequestBody::IsSpaceFollower(args) => {
            space_follows_xt::is_space_follower(client, signer, args).await
        }
        // Profile follows pallet.
        RequestBody::AccountFollowers(args) => {
            profile_follows::account_followers(client, args.account_id).await
        }
        RequestBody::AccountsFollowedByAccount(args) => {
            profile_follows::accounts_followed_by_account(
                client,
                args.account_id,
            )
            .await
        }
        RequestBody::IsAccountFollower(args) => {
            profile_follows_xt::is_account_follower(client, signer, args).await
        }
        RequestBody::FollowAccount(args) => {
            profile_follows_xt::follow_account(client, signer, args).await
        }
        RequestBody::UnfollowAccount(args) => {
            profile_follows_xt::unfollow_account(client, signer, args).await
        }
        RequestBody::IsPostSharedByAccount(args) => {
            is_post_shared_by_account(client, signer, args).await
        }
    };
    let response = match result {
        Ok(body) => Response { body: Some(body) },
        Err(e) => Response {
            body: Some(ResponseBody::Error(e)),
        },
    };
    let mut buffer = Vec::new();
    response.encode(&mut buffer).expect("should never fails");
    ZeroCopyBuffer(buffer)
}

fn current_account_id(signer: &Signer) -> Result<ResponseBody, Error> {
    let my_public_key = signer.signer().public();
    let dummy_public_key = crate::dummy_signer().signer().public();
    if my_public_key == dummy_public_key {
        return Ok(ResponseBody::CurrentAccountId(Default::default()));
    }
    let account_id = my_public_key.to_ss58check_with_version(
        Ss58AddressFormatRegistry::SubsocialAccount.into(),
    );
    let body = ResponseBody::CurrentAccountId(CurrentAccountId { account_id });
    Ok(body)
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
    let public_key = pair.signer().public().to_ss58check_with_version(
        Ss58AddressFormatRegistry::SubsocialAccount.into(),
    );
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
    let public_key = pair.signer().public().to_ss58check_with_version(
        Ss58AddressFormatRegistry::SubsocialAccount.into(),
    );
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

async fn is_post_shared_by_account(
    _client: &SubsocialApi,
    _signer: &Signer,
    IsPostSharedByAccount { post_id: _ }: IsPostSharedByAccount,
) -> Result<ResponseBody, Error> {
    // TODO(shekohex): implement this function.
    Ok(ResponseBody::IsPostSharedByAccount(false))
}
