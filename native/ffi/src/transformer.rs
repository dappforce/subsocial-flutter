use sdk::subsocial::runtime_types;
use sdk::subxt::sp_core::crypto::{Ss58AddressFormatRegistry, Ss58Codec};
use sdk::subxt::sp_runtime::AccountId32;

use crate::pb::subsocial::*;

pub trait AccountIdFromString: Ss58Codec {
    fn convert(val: String) -> Result<Self, Error> {
        match Self::from_string(&val) {
            Ok(val) => Ok(val),
            Err(_) => Err(Error {
                kind: error::Kind::InvalidRequest.into(),
                msg: String::from("Invalid AccountId"),
            }),
        }
    }
}

impl AccountIdFromString for AccountId32 {}

impl From<sdk::subxt::Error> for Error {
    fn from(e: sdk::subxt::Error) -> Self {
        Self {
            kind: error::Kind::Subxt.into(),
            msg: format!("{}", e),
        }
    }
}

impl From<sdk::scale::Error> for Error {
    fn from(e: sdk::scale::Error) -> Self {
        Self {
            kind: error::Kind::Subxt.into(),
            msg: e.to_string(),
        }
    }
}

impl From<runtime_types::pallet_utils::WhoAndWhen> for WhoAndWhen {
    fn from(v: runtime_types::pallet_utils::WhoAndWhen) -> Self {
        Self {
            account: v.account.to_ss58check_with_version(
                Ss58AddressFormatRegistry::SubsocialAccount.into(),
            ),
            block_number: v.block.into(),
            time: v.time,
        }
    }
}

impl From<runtime_types::pallet_utils::Content> for Content {
    fn from(content: runtime_types::pallet_utils::Content) -> Self {
        use content::Value;
        match content {
            runtime_types::pallet_utils::Content::None => {
                unimplemented!("Should not be called")
            }
            runtime_types::pallet_utils::Content::Raw(value) => Content {
                value: Some(Value::Raw(value)),
            },
            runtime_types::pallet_utils::Content::IPFS(cid) => Content {
                value: Some(Value::Ipfs(String::from_utf8(cid).unwrap())),
            },
            runtime_types::pallet_utils::Content::Hyper(link) => Content {
                value: Some(Value::Hyper(String::from_utf8(link).unwrap())),
            },
        }
    }
}

impl From<Content> for runtime_types::pallet_utils::Content {
    fn from(content: Content) -> Self {
        use content::Value;
        let val = match content.value {
            Some(val) => val,
            None => return Self::None,
        };
        match val {
            Value::Raw(bytes) => Self::Raw(bytes),
            Value::Ipfs(cid) => Self::IPFS(cid.into_bytes()),
            Value::Hyper(val) => Self::Hyper(val.into_bytes()),
        }
    }
}

impl From<runtime_types::pallet_posts::PostExtension> for PostExtension {
    fn from(extension: runtime_types::pallet_posts::PostExtension) -> Self {
        use post_extension::Value;
        match extension {
            runtime_types::pallet_posts::PostExtension::Comment(comment) => {
                PostExtension {
                    value: Some(Value::Comment(Comment {
                        parent_id: comment.parent_id.unwrap_or_default(),
                        root_post_id: comment.root_post_id,
                    })),
                }
            }
            runtime_types::pallet_posts::PostExtension::SharedPost(id) => {
                PostExtension {
                    value: Some(Value::SharedPost(SharedPost {
                        root_post_id: id,
                    })),
                }
            }
            runtime_types::pallet_posts::PostExtension::RegularPost => {
                PostExtension {
                    value: Some(Value::RegularPost(RegularPost {})),
                }
            }
        }
    }
}

impl From<PostExtension> for runtime_types::pallet_posts::PostExtension {
    fn from(ext: PostExtension) -> Self {
        use post_extension::Value;
        let val = match ext.value {
            Some(val) => val,
            None => return Self::RegularPost,
        };
        match val {
            Value::RegularPost(_) => Self::RegularPost,
            Value::Comment(comment) => {
                Self::Comment(runtime_types::pallet_posts::Comment {
                    parent_id: if comment.parent_id != 0 {
                        Some(comment.parent_id)
                    } else {
                        None
                    },
                    root_post_id: comment.root_post_id,
                })
            }
            Value::SharedPost(val) => Self::SharedPost(val.root_post_id),
        }
    }
}

impl From<runtime_types::pallet_spaces::Space> for Space {
    fn from(space: runtime_types::pallet_spaces::Space) -> Self {
        use runtime_types::pallet_utils::Content;
        Self {
            id: space.id,
            created: Some(space.created.into()),
            updated: space.updated.map(Into::into),
            owner: space.owner.to_ss58check_with_version(
                Ss58AddressFormatRegistry::SubsocialAccount.into(),
            ),
            parent_id: space.parent_id.unwrap_or_default(),
            handle: space
                .handle
                .map(String::from_utf8)
                .transpose()
                .unwrap_or_default()
                .unwrap_or_default(),
            content: if space.content == Content::None {
                None
            } else {
                Some(space.content.into())
            },
            hidden: space.hidden,
            posts_count: space.posts_count,
            hidden_posts_count: space.hidden_posts_count,
            followers_count: space.followers_count,
            score: space.score,
        }
    }
}

impl From<runtime_types::pallet_posts::Post> for Post {
    fn from(post: runtime_types::pallet_posts::Post) -> Self {
        use runtime_types::pallet_posts::PostExtension;
        use runtime_types::pallet_utils::Content;
        Self {
            id: post.id,
            created: Some(post.created.into()),
            updated: post.updated.map(Into::into),
            owner: post.owner.to_ss58check_with_version(
                Ss58AddressFormatRegistry::SubsocialAccount.into(),
            ),
            space_id: post.space_id.unwrap_or_default(),
            content: if post.content == Content::None {
                None
            } else {
                Some(post.content.into())
            },
            extension_value: if post.extension == PostExtension::RegularPost {
                None
            } else {
                Some(post.extension.into())
            },
            hidden: post.hidden,
            replies_count: post.replies_count.into(),
            shares_count: post.shares_count.into(),
            upvotes_count: post.upvotes_count.into(),
            downvotes_count: post.downvotes_count.into(),
            hidden_replies_count: post.hidden_replies_count.into(),
            score: post.score,
        }
    }
}

impl From<PostUpdate> for runtime_types::pallet_posts::PostUpdate {
    fn from(update: PostUpdate) -> Self {
        Self {
            space_id: None,
            content: update.content.map(Into::into),
            hidden: Some(update.hidden),
        }
    }
}

impl From<runtime_types::pallet_reactions::ReactionKind> for reaction::Kind {
    fn from(k: runtime_types::pallet_reactions::ReactionKind) -> Self {
        match k {
            runtime_types::pallet_reactions::ReactionKind::Upvote => {
                reaction::Kind::UpVote
            }
            runtime_types::pallet_reactions::ReactionKind::Downvote => {
                reaction::Kind::DownVote
            }
        }
    }
}

impl From<reaction::Kind> for runtime_types::pallet_reactions::ReactionKind {
    fn from(k: reaction::Kind) -> Self {
        match k {
            reaction::Kind::Unknown => {
                runtime_types::pallet_reactions::ReactionKind::Upvote
            }
            reaction::Kind::UpVote => {
                runtime_types::pallet_reactions::ReactionKind::Upvote
            }
            reaction::Kind::DownVote => {
                runtime_types::pallet_reactions::ReactionKind::Downvote
            }
        }
    }
}

impl From<runtime_types::pallet_reactions::Reaction> for Reaction {
    fn from(reaction: runtime_types::pallet_reactions::Reaction) -> Self {
        Self {
            id: reaction.id,
            created: Some(reaction.created.into()),
            updated: reaction.updated.map(Into::into),
            kind: reaction::Kind::from(reaction.kind).into(),
        }
    }
}

impl From<runtime_types::pallet_profiles::Profile> for Profile {
    fn from(profile: runtime_types::pallet_profiles::Profile) -> Self {
        Self {
            created: Some(profile.created.into()),
            updated: profile.updated.map(Into::into),
            content: Some(profile.content.into()),
        }
    }
}

impl From<runtime_types::pallet_profiles::SocialAccount> for SocialAccount {
    fn from(account: runtime_types::pallet_profiles::SocialAccount) -> Self {
        Self {
            profile: account.profile.map(Into::into),
            followers_count: account.followers_count,
            reputation: account.reputation,
            following_spaces_count: account.following_spaces_count.into(),
            following_accounts_count: account.following_accounts_count.into(),
        }
    }
}

impl From<SpaceUpdate> for runtime_types::pallet_spaces::SpaceUpdate {
    fn from(v: SpaceUpdate) -> Self {
        Self {
            content: v.content.map(Into::into),
            hidden: Some(v.hidden),
            handle: if v.handle.is_empty() {
                None
            } else {
                Some(Some(v.handle.into_bytes()))
            },
            parent_id: if v.parent_id == 0 {
                None
            } else {
                Some(Some(v.parent_id))
            },
            permissions: None,
        }
    }
}
