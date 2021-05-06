use codec::{Decode, Encode};
use frame_support::traits::Get;
use frame_system as system;
use sp_std::collections::btree_set::BTreeSet;
use sp_std::prelude::*;
use subxt::sp_runtime::RuntimeDebug;

use super::utils::SpaceId;

#[derive(
    Encode, Decode, Ord, PartialOrd, Clone, Eq, PartialEq, RuntimeDebug,
)]
pub enum SpacePermission {
    /// Create, update, delete, grant and revoke roles in this space.
    ManageRoles,

    /// Act on behalf of this space within this space.
    RepresentSpaceInternally,
    /// Act on behalf of this space outside of this space.
    RepresentSpaceExternally,

    /// Update this space.
    UpdateSpace,

    // Related to subspaces in this space:
    CreateSubspaces,
    UpdateOwnSubspaces,
    DeleteOwnSubspaces,
    HideOwnSubspaces,

    UpdateAnySubspace,
    DeleteAnySubspace,
    HideAnySubspace,

    // Related to posts in this space:
    CreatePosts,
    UpdateOwnPosts,
    DeleteOwnPosts,
    HideOwnPosts,

    UpdateAnyPost,
    DeleteAnyPost,
    HideAnyPost,

    // Related to comments in this space:
    CreateComments,
    UpdateOwnComments,
    DeleteOwnComments,
    HideOwnComments,

    // NOTE: It was made on purpose that it's not possible to update or delete
    // not own comments. Instead it's possible to allow to hide and block
    // comments.
    HideAnyComment,

    /// Upvote any post or comment in this space.
    Upvote,
    /// Downvote any post or comment in this space.
    Downvote,
    /// Share any post or comment from this space to another outer space.
    Share,

    /// Override permissions per subspace in this space.
    OverrideSubspacePermissions,
    /// Override permissions per post in this space.
    OverridePostPermissions,

    // Related to the moderation pallet:
    /// Suggest new entity status in space (whether it's blocked or allowed)
    SuggestEntityStatus,
    /// Update entity status in space
    UpdateEntityStatus,

    // Related to space settings:
    /// Allows to update space settings across different pallets.
    UpdateSpaceSettings,
}

pub type SpacePermissionSet = BTreeSet<SpacePermission>;

#[derive(Encode, Decode, Clone, Eq, PartialEq, RuntimeDebug)]
pub struct SpacePermissions {
    pub none: Option<SpacePermissionSet>,
    pub everyone: Option<SpacePermissionSet>,
    pub follower: Option<SpacePermissionSet>,
    pub space_owner: Option<SpacePermissionSet>,
}

impl Default for SpacePermissions {
    fn default() -> SpacePermissions {
        SpacePermissions {
            none: None,
            everyone: None,
            follower: None,
            space_owner: None,
        }
    }
}

#[derive(Encode, Decode, Clone, Eq, PartialEq, RuntimeDebug)]
pub struct SpacePermissionsContext {
    pub space_id: SpaceId,
    pub is_space_owner: bool,
    pub is_space_follower: bool,
    pub space_perms: Option<SpacePermissions>,
}

/// The pallet's configuration trait.
pub trait Trait: system::Trait {
    type DefaultSpacePermissions: Get<SpacePermissions>;
}

impl SpacePermission {
    fn is_present_in_role(
        &self,
        perms_opt: Option<SpacePermissionSet>,
    ) -> bool {
        if let Some(perms) = perms_opt {
            if perms.contains(self) {
                return true;
            }
        }
        false
    }
}
