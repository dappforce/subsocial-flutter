use frame_support::dispatch::{DispatchError, DispatchResult};

use super::permissions::{
    SpacePermission, SpacePermissions, SpacePermissionsContext,
};
use super::utils::{Content, SpaceId, User};

/// Minimal set of fields from Space struct that are required by roles pallet.
pub struct SpaceForRoles<AccountId> {
    pub owner: AccountId,
    pub permissions: Option<SpacePermissions>,
}

pub trait SpaceForRolesProvider {
    type AccountId;

    fn get_space(
        id: SpaceId,
    ) -> Result<SpaceForRoles<Self::AccountId>, DispatchError>;
}

pub trait SpaceFollowsProvider {
    type AccountId;

    fn is_space_follower(account: Self::AccountId, space_id: SpaceId) -> bool;
}

pub trait PermissionChecker {
    type AccountId;

    fn ensure_user_has_space_permission(
        user: User<Self::AccountId>,
        ctx: SpacePermissionsContext,
        permission: SpacePermission,
        error: DispatchError,
    ) -> DispatchResult;

    fn ensure_account_has_space_permission(
        account: Self::AccountId,
        ctx: SpacePermissionsContext,
        permission: SpacePermission,
        error: DispatchError,
    ) -> DispatchResult {
        Self::ensure_user_has_space_permission(
            User::Account(account),
            ctx,
            permission,
            error,
        )
    }
}

pub trait IsAccountBlocked<AccountId> {
    fn is_blocked_account(account: AccountId, scope: SpaceId) -> bool;
    fn is_allowed_account(account: AccountId, scope: SpaceId) -> bool;
}

impl<AccountId> IsAccountBlocked<AccountId> for () {
    fn is_blocked_account(_account: AccountId, _scope: u64) -> bool {
        false
    }

    fn is_allowed_account(_account: AccountId, _scope: u64) -> bool {
        true
    }
}

pub trait IsSpaceBlocked {
    fn is_blocked_space(space_id: SpaceId, scope: SpaceId) -> bool;
    fn is_allowed_space(space_id: SpaceId, scope: SpaceId) -> bool;
}

// TODO: reuse `type PostId` from pallet_utils in future updates
pub trait IsPostBlocked<PostId> {
    fn is_blocked_post(post_id: PostId, scope: SpaceId) -> bool;
    fn is_allowed_post(post_id: PostId, scope: SpaceId) -> bool;
}

impl<PostId> IsPostBlocked<PostId> for () {
    fn is_blocked_post(_post_id: PostId, _scope: SpaceId) -> bool {
        false
    }

    fn is_allowed_post(_post_id: PostId, _scope: u64) -> bool {
        true
    }
}

pub trait IsContentBlocked {
    fn is_blocked_content(content: Content, scope: SpaceId) -> bool;
    fn is_allowed_content(content: Content, scope: SpaceId) -> bool;
}

impl IsContentBlocked for () {
    fn is_blocked_content(_content: Content, _scope: u64) -> bool {
        false
    }

    fn is_allowed_content(_content: Content, _scope: SpaceId) -> bool {
        true
    }
}
