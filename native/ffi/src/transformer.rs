use sdk::pallet::{posts, reactions, spaces, utils};
use sdk::runtime::SubsocialRuntime;

use crate::pb::subsocial::*;

impl From<utils::WhoAndWhen<SubsocialRuntime>> for WhoAndWhen {
    fn from(v: utils::WhoAndWhen<SubsocialRuntime>) -> Self {
        Self {
            account: v.account.to_string(),
            block_number: v.block.into(),
            time: v.time,
        }
    }
}

impl From<utils::Content> for Content {
    fn from(content: utils::Content) -> Self {
        use content::Value;
        match content {
            utils::Content::None => unimplemented!("Should not be called"),
            utils::Content::Raw(value) => Content {
                value: Some(Value::Raw(value)),
            },
            utils::Content::IPFS(cid) => Content {
                value: Some(Value::Ipfs(String::from_utf8(cid).unwrap())),
            },
            utils::Content::Hyper(link) => Content {
                value: Some(Value::Hyper(String::from_utf8(link).unwrap())),
            },
        }
    }
}

impl From<posts::PostExtension> for PostExtension {
    fn from(extension: posts::PostExtension) -> Self {
        use post_extension::Value;
        match extension {
            posts::PostExtension::Comment(comment) => PostExtension {
                value: Some(Value::Comment(Comment {
                    parent_id: comment.parent_id.unwrap_or_default(),
                    root_post_id: comment.root_post_id,
                })),
            },
            posts::PostExtension::SharedPost(id) => PostExtension {
                value: Some(Value::SharedPost(SharedPost { root_post_id: id })),
            },
            posts::PostExtension::RegularPost => {
                unimplemented!("Should be None!")
            }
        }
    }
}

impl From<spaces::Space<SubsocialRuntime>> for Space {
    fn from(space: spaces::Space<SubsocialRuntime>) -> Self {
        use utils::Content;
        Self {
            id: space.id,
            created: Some(space.created.into()),
            updated: space.updated.map(Into::into),
            owner: space.owner.to_string(),
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

impl From<posts::Post<SubsocialRuntime>> for Post {
    fn from(post: posts::Post<SubsocialRuntime>) -> Self {
        use posts::PostExtension;
        use utils::Content;
        Self {
            id: post.id,
            created: Some(post.created.into()),
            updated: post.updated.map(Into::into),
            owner: post.owner.to_string(),
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

impl From<reactions::ReactionKind> for reaction::ReactionKind {
    fn from(k: reactions::ReactionKind) -> Self {
        match k {
            reactions::ReactionKind::Upvote => reaction::ReactionKind::UpVote,
            reactions::ReactionKind::Downvote => {
                reaction::ReactionKind::DownVote
            }
        }
    }
}

impl From<reactions::Reaction<SubsocialRuntime>> for Reaction {
    fn from(reaction: reactions::Reaction<SubsocialRuntime>) -> Self {
        use reaction::ReactionKind;
        Self {
            id: reaction.id,
            created: Some(reaction.created.into()),
            updated: reaction.updated.map(Into::into),
            kind: ReactionKind::from(reaction.kind).into(),
        }
    }
}
