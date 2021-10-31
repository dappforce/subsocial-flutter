#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Request {
    #[prost(oneof="request::Body", tags="1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37")]
    pub body: ::core::option::Option<request::Body>,
}
/// Nested message and enum types in `Request`.
pub mod request {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Body {
        #[prost(message, tag="1")]
        SystemProperties(super::GetSystemProperties),
        #[prost(message, tag="2")]
        GenerateAccount(super::GenerateAccount),
        #[prost(message, tag="3")]
        ImportAccount(super::ImportAccount),
        #[prost(message, tag="4")]
        QueryAccountData(super::QueryAccountData),
        #[prost(message, tag="5")]
        CurrentAccountId(super::GetCurrentAccountId),
        #[prost(message, tag="6")]
        NextSpaceId(super::GetNextSpaceId),
        #[prost(message, tag="7")]
        SpaceById(super::GetSpaceById),
        #[prost(message, tag="8")]
        SpaceByHandle(super::GetSpaceByHandle),
        #[prost(message, tag="9")]
        SpaceIdsByOwner(super::GetSpaceIdsByOwner),
        #[prost(message, tag="10")]
        CreateSpace(super::CreateSpace),
        #[prost(message, tag="11")]
        UpdateSpace(super::UpdateSpace),
        #[prost(message, tag="12")]
        NextPostId(super::GetNextPostId),
        #[prost(message, tag="13")]
        PostById(super::GetPostById),
        #[prost(message, tag="14")]
        PostIdsBySpaceId(super::GetPostIdsBySpaceId),
        #[prost(message, tag="15")]
        CreatePost(super::CreatePost),
        #[prost(message, tag="16")]
        UpdatePost(super::UpdatePost),
        #[prost(message, tag="17")]
        ReactionById(super::GetReactionById),
        #[prost(message, tag="18")]
        ReactionIdsByPostId(super::GetReactionIdsByPostId),
        #[prost(message, tag="19")]
        ReplyIdsByPostId(super::GetReplyIdsByPostId),
        #[prost(message, tag="20")]
        PostReactionIdByAccount(super::GetPostReactionIdByAccount),
        #[prost(message, tag="21")]
        CreatePostReaction(super::CreatePostReaction),
        #[prost(message, tag="22")]
        UpdatePostReaction(super::UpdatePostReaction),
        #[prost(message, tag="23")]
        DeletePostReaction(super::DeletePostReaction),
        #[prost(message, tag="24")]
        SpaceFollowers(super::GetSpaceFollowers),
        #[prost(message, tag="25")]
        SpacesFollowedByAccount(super::GetSpacesFollowedByAccount),
        #[prost(message, tag="26")]
        IsSpaceFollower(super::IsSpaceFollower),
        #[prost(message, tag="27")]
        FollowSpace(super::FollowSpace),
        #[prost(message, tag="28")]
        UnfollowSpace(super::UnfollowSpace),
        #[prost(message, tag="29")]
        SocialAccountByAccountId(super::GetSocialAccountByAccountId),
        #[prost(message, tag="30")]
        CreateProfile(super::CreateProfile),
        #[prost(message, tag="31")]
        UpdateProfile(super::UpdateProfile),
        #[prost(message, tag="32")]
        AccountFollowers(super::GetAccountFollowers),
        #[prost(message, tag="33")]
        AccountsFollowedByAccount(super::GetAccountsFollowedByAccount),
        #[prost(message, tag="34")]
        FollowAccount(super::FollowAccount),
        #[prost(message, tag="35")]
        UnfollowAccount(super::UnfollowAccount),
        #[prost(message, tag="36")]
        IsAccountFollower(super::IsAccountFollower),
        #[prost(message, tag="37")]
        IsPostSharedByAccount(super::IsPostSharedByAccount),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Response {
    #[prost(oneof="response::Body", tags="1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38")]
    pub body: ::core::option::Option<response::Body>,
}
/// Nested message and enum types in `Response`.
pub mod response {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Body {
        #[prost(message, tag="1")]
        Error(super::Error),
        #[prost(message, tag="2")]
        SystemProperties(super::SystemProperties),
        #[prost(message, tag="3")]
        AccountData(super::AccountData),
        #[prost(message, tag="4")]
        GeneratedAccount(super::GeneratedAccount),
        #[prost(message, tag="5")]
        ImportedAccount(super::ImportedAccount),
        #[prost(message, tag="6")]
        CurrentAccountId(super::CurrentAccountId),
        #[prost(message, tag="7")]
        NextSpaceId(super::NextSpaceId),
        #[prost(message, tag="8")]
        SpaceById(super::SpaceById),
        #[prost(message, tag="9")]
        SpaceByHandle(super::SpaceByHandle),
        #[prost(message, tag="10")]
        SpaceIdsByOwner(super::SpaceIdsByOwner),
        #[prost(message, tag="11")]
        SpaceCreated(super::SpaceCreated),
        #[prost(message, tag="12")]
        SpaceUpdated(super::SpaceUpdated),
        #[prost(message, tag="13")]
        NextPostId(super::NextPostId),
        #[prost(message, tag="14")]
        PostById(super::PostById),
        #[prost(message, tag="15")]
        PostIdsBySpaceId(super::PostIdsBySpaceId),
        #[prost(message, tag="16")]
        ReplyIdsByPostId(super::ReplyIdsByPostId),
        #[prost(message, tag="17")]
        PostCreated(super::PostCreated),
        #[prost(message, tag="18")]
        PostUpdated(super::PostUpdated),
        #[prost(message, tag="19")]
        ReactionById(super::ReactionById),
        #[prost(message, tag="20")]
        ReactionIdsByPostId(super::ReactionIdsByPostId),
        #[prost(message, tag="21")]
        PostReactionIdByAccount(super::PostReactionIdByAccount),
        #[prost(message, tag="22")]
        PostReactionCreated(super::PostReactionCreated),
        #[prost(message, tag="23")]
        PostReactionUpdated(super::PostReactionUpdated),
        #[prost(message, tag="24")]
        PostReactionDeleted(super::PostReactionDeleted),
        #[prost(message, tag="25")]
        SpaceFollowers(super::SpaceFollowers),
        #[prost(message, tag="26")]
        SpacesFollowedByAccount(super::SpacesFollowedByAccount),
        #[prost(bool, tag="27")]
        IsSpaceFollower(bool),
        #[prost(message, tag="28")]
        SpaceFollowed(super::SpaceFollowed),
        #[prost(message, tag="29")]
        SpaceUnfollowed(super::SpaceUnfollowed),
        #[prost(message, tag="30")]
        AccountFollowers(super::AccountFollowers),
        #[prost(message, tag="31")]
        AccountsFollowedByAccount(super::AccountsFollowedByAccount),
        #[prost(bool, tag="32")]
        IsAccountFollower(bool),
        #[prost(message, tag="33")]
        AccountFollowed(super::AccountFollowed),
        #[prost(message, tag="34")]
        AccountUnfollowed(super::AccountUnfollowed),
        #[prost(message, tag="35")]
        SocialAccountByAccountId(super::SocialAccountByAccountId),
        #[prost(message, tag="36")]
        ProfileCreated(super::ProfileCreated),
        #[prost(message, tag="37")]
        ProfileUpdated(super::ProfileUpdated),
        #[prost(bool, tag="38")]
        IsPostSharedByAccount(bool),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Error {
    #[prost(enumeration="error::Kind", tag="1")]
    pub kind: i32,
    #[prost(string, tag="2")]
    pub msg: ::prost::alloc::string::String,
}
/// Nested message and enum types in `Error`.
pub mod error {
    #[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
    #[repr(i32)]
    pub enum Kind {
        Unknown = 0,
        Network = 1,
        InvalidProto = 2,
        InvalidRequest = 3,
        NotFound = 4,
        Subxt = 5,
    }
}
// REQUESTS

#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSpaceById {
    #[prost(uint64, tag="1")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSpaceByHandle {
    #[prost(string, tag="1")]
    pub handle: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetPostById {
    #[prost(uint64, tag="1")]
    pub post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetReactionById {
    #[prost(uint64, tag="1")]
    pub reaction_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetPostIdsBySpaceId {
    #[prost(uint64, tag="1")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetReactionIdsByPostId {
    #[prost(uint64, tag="1")]
    pub post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetReplyIdsByPostId {
    #[prost(uint64, tag="1")]
    pub post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSocialAccountByAccountId {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetNextSpaceId {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetNextPostId {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetCurrentAccountId {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSystemProperties {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSpaceIdsByOwner {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSpaceFollowers {
    #[prost(uint64, tag="1")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSpacesFollowedByAccount {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetAccountFollowers {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetAccountsFollowedByAccount {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetPostReactionIdByAccount {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct QueryAccountData {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GenerateAccount {
    #[prost(string, tag="1")]
    pub password: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ImportAccount {
    #[prost(string, tag="1")]
    pub password: ::prost::alloc::string::String,
    #[prost(string, tag="2")]
    pub suri: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreatePostReaction {
    #[prost(uint64, tag="1")]
    pub post_id: u64,
    #[prost(enumeration="reaction::Kind", tag="2")]
    pub kind: i32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreatePost {
    #[prost(uint64, tag="1")]
    pub space_id: u64,
    #[prost(message, optional, tag="2")]
    pub extension_value: ::core::option::Option<PostExtension>,
    #[prost(message, optional, tag="3")]
    pub content: ::core::option::Option<Content>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdatePost {
    #[prost(uint64, tag="1")]
    pub post_id: u64,
    #[prost(message, optional, tag="2")]
    pub post_update: ::core::option::Option<PostUpdate>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct FollowSpace {
    #[prost(uint64, tag="1")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UnfollowSpace {
    #[prost(uint64, tag="1")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IsAccountFollower {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IsSpaceFollower {
    #[prost(uint64, tag="1")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IsPostSharedByAccount {
    #[prost(uint64, tag="1")]
    pub post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdatePostReaction {
    #[prost(uint64, tag="1")]
    pub post_id: u64,
    #[prost(uint64, tag="2")]
    pub reaction_id: u64,
    #[prost(enumeration="reaction::Kind", tag="3")]
    pub new_kind: i32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeletePostReaction {
    #[prost(uint64, tag="1")]
    pub post_id: u64,
    #[prost(uint64, tag="2")]
    pub reaction_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateProfile {
    #[prost(message, optional, tag="1")]
    pub content: ::core::option::Option<Content>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateProfile {
    #[prost(message, optional, tag="1")]
    pub maybe_content: ::core::option::Option<Content>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateSpace {
    #[prost(uint64, tag="1")]
    pub parent_id: u64,
    #[prost(string, tag="2")]
    pub handle: ::prost::alloc::string::String,
    /// TODO(@shekohex): add `SpacePermissions`.
    #[prost(message, optional, tag="3")]
    pub content: ::core::option::Option<Content>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateSpace {
    #[prost(uint64, tag="1")]
    pub space_id: u64,
    #[prost(message, optional, tag="2")]
    pub update: ::core::option::Option<SpaceUpdate>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct FollowAccount {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UnfollowAccount {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
// DATA

#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WhoAndWhen {
    #[prost(string, tag="1")]
    pub account: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub block_number: u64,
    #[prost(uint64, tag="3")]
    pub time: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Content {
    #[prost(oneof="content::Value", tags="1, 2, 3")]
    pub value: ::core::option::Option<content::Value>,
}
/// Nested message and enum types in `Content`.
pub mod content {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Value {
        #[prost(bytes, tag="1")]
        Raw(::prost::alloc::vec::Vec<u8>),
        #[prost(string, tag="2")]
        Ipfs(::prost::alloc::string::String),
        #[prost(string, tag="3")]
        Hyper(::prost::alloc::string::String),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RegularPost {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostExtension {
    #[prost(oneof="post_extension::Value", tags="1, 2, 3")]
    pub value: ::core::option::Option<post_extension::Value>,
}
/// Nested message and enum types in `PostExtension`.
pub mod post_extension {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Value {
        #[prost(message, tag="1")]
        RegularPost(super::RegularPost),
        #[prost(message, tag="2")]
        Comment(super::Comment),
        #[prost(message, tag="3")]
        SharedPost(super::SharedPost),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Space {
    #[prost(uint64, tag="1")]
    pub id: u64,
    #[prost(message, optional, tag="2")]
    pub created: ::core::option::Option<WhoAndWhen>,
    #[prost(message, optional, tag="3")]
    pub updated: ::core::option::Option<WhoAndWhen>,
    #[prost(string, tag="4")]
    pub owner: ::prost::alloc::string::String,
    #[prost(uint64, tag="5")]
    pub parent_id: u64,
    #[prost(string, tag="6")]
    pub handle: ::prost::alloc::string::String,
    #[prost(message, optional, tag="7")]
    pub content: ::core::option::Option<Content>,
    #[prost(bool, tag="8")]
    pub hidden: bool,
    #[prost(uint32, tag="9")]
    pub posts_count: u32,
    #[prost(uint32, tag="10")]
    pub hidden_posts_count: u32,
    #[prost(uint32, tag="11")]
    pub followers_count: u32,
    #[prost(int32, tag="12")]
    pub score: i32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Post {
    #[prost(uint64, tag="1")]
    pub id: u64,
    #[prost(message, optional, tag="2")]
    pub created: ::core::option::Option<WhoAndWhen>,
    #[prost(message, optional, tag="3")]
    pub updated: ::core::option::Option<WhoAndWhen>,
    #[prost(string, tag="4")]
    pub owner: ::prost::alloc::string::String,
    #[prost(message, optional, tag="5")]
    pub extension_value: ::core::option::Option<PostExtension>,
    #[prost(uint64, tag="6")]
    pub space_id: u64,
    #[prost(message, optional, tag="7")]
    pub content: ::core::option::Option<Content>,
    #[prost(bool, tag="8")]
    pub hidden: bool,
    #[prost(uint32, tag="9")]
    pub replies_count: u32,
    #[prost(uint32, tag="10")]
    pub hidden_replies_count: u32,
    #[prost(uint32, tag="11")]
    pub shares_count: u32,
    #[prost(uint32, tag="12")]
    pub upvotes_count: u32,
    #[prost(uint32, tag="13")]
    pub downvotes_count: u32,
    #[prost(int32, tag="14")]
    pub score: i32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Comment {
    #[prost(uint64, tag="1")]
    pub parent_id: u64,
    #[prost(uint64, tag="2")]
    pub root_post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SharedPost {
    #[prost(uint64, tag="1")]
    pub root_post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Reaction {
    #[prost(uint64, tag="1")]
    pub id: u64,
    #[prost(message, optional, tag="2")]
    pub created: ::core::option::Option<WhoAndWhen>,
    #[prost(message, optional, tag="3")]
    pub updated: ::core::option::Option<WhoAndWhen>,
    #[prost(enumeration="reaction::Kind", tag="4")]
    pub kind: i32,
}
/// Nested message and enum types in `Reaction`.
pub mod reaction {
    #[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
    #[repr(i32)]
    pub enum Kind {
        Unknown = 0,
        UpVote = 1,
        DownVote = 2,
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SocialAccount {
    #[prost(uint32, tag="1")]
    pub followers_count: u32,
    #[prost(uint32, tag="2")]
    pub following_accounts_count: u32,
    #[prost(uint32, tag="3")]
    pub following_spaces_count: u32,
    #[prost(uint32, tag="4")]
    pub reputation: u32,
    #[prost(message, optional, tag="5")]
    pub profile: ::core::option::Option<Profile>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Profile {
    #[prost(message, optional, tag="1")]
    pub created: ::core::option::Option<WhoAndWhen>,
    #[prost(message, optional, tag="2")]
    pub updated: ::core::option::Option<WhoAndWhen>,
    #[prost(message, optional, tag="3")]
    pub content: ::core::option::Option<Content>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostUpdate {
    #[prost(message, optional, tag="1")]
    pub content: ::core::option::Option<Content>,
    #[prost(bool, tag="2")]
    pub hidden: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceUpdate {
    #[prost(uint64, tag="1")]
    pub parent_id: u64,
    #[prost(string, tag="2")]
    pub handle: ::prost::alloc::string::String,
    #[prost(message, optional, tag="3")]
    pub content: ::core::option::Option<Content>,
    /// TODO(@shekohex): add `SpacePermissions` here.
    #[prost(bool, tag="4")]
    pub hidden: bool,
}
// RESPONSES

#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceById {
    #[prost(message, optional, tag="1")]
    pub space: ::core::option::Option<Space>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceByHandle {
    #[prost(message, optional, tag="1")]
    pub space: ::core::option::Option<Space>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostById {
    #[prost(message, optional, tag="1")]
    pub post: ::core::option::Option<Post>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ReactionById {
    #[prost(message, optional, tag="1")]
    pub reaction: ::core::option::Option<Reaction>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostIdsBySpaceId {
    #[prost(uint64, repeated, tag="1")]
    pub post_ids: ::prost::alloc::vec::Vec<u64>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ReactionIdsByPostId {
    #[prost(uint64, repeated, tag="1")]
    pub reaction_ids: ::prost::alloc::vec::Vec<u64>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ReplyIdsByPostId {
    #[prost(uint64, repeated, tag="1")]
    pub reply_ids: ::prost::alloc::vec::Vec<u64>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SocialAccountByAccountId {
    #[prost(message, optional, tag="1")]
    pub social_account: ::core::option::Option<SocialAccount>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NextSpaceId {
    #[prost(uint64, tag="1")]
    pub id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NextPostId {
    #[prost(uint64, tag="1")]
    pub id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CurrentAccountId {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceIdsByOwner {
    #[prost(uint64, repeated, tag="1")]
    pub space_ids: ::prost::alloc::vec::Vec<u64>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceFollowers {
    #[prost(string, repeated, tag="1")]
    pub account_ids: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpacesFollowedByAccount {
    #[prost(uint64, repeated, tag="1")]
    pub space_ids: ::prost::alloc::vec::Vec<u64>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AccountFollowers {
    #[prost(string, repeated, tag="1")]
    pub account_ids: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AccountsFollowedByAccount {
    #[prost(string, repeated, tag="1")]
    pub account_ids: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GeneratedAccount {
    #[prost(string, tag="1")]
    pub public_key: ::prost::alloc::string::String,
    #[prost(string, tag="2")]
    pub seed_phrase: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ImportedAccount {
    #[prost(string, tag="1")]
    pub public_key: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostReactionCreated {
    #[prost(uint64, tag="1")]
    pub post_id: u64,
    #[prost(uint64, tag="2")]
    pub reaction_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostCreated {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostUpdated {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceFollowed {
    #[prost(string, tag="1")]
    pub follower: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceUnfollowed {
    #[prost(string, tag="1")]
    pub follower: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostReactionUpdated {
    #[prost(uint64, tag="1")]
    pub post_id: u64,
    #[prost(uint64, tag="2")]
    pub reaction_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostReactionDeleted {
    #[prost(uint64, tag="1")]
    pub post_id: u64,
    #[prost(uint64, tag="2")]
    pub reaction_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ProfileCreated {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ProfileUpdated {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceCreated {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceUpdated {
    #[prost(string, tag="1")]
    pub account_id: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AccountFollowed {
    #[prost(string, tag="1")]
    pub follower: ::prost::alloc::string::String,
    #[prost(string, tag="2")]
    pub following: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AccountUnfollowed {
    #[prost(string, tag="1")]
    pub follower: ::prost::alloc::string::String,
    #[prost(string, tag="2")]
    pub unfollowing: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostReactionIdByAccount {
    #[prost(uint64, tag="1")]
    pub reaction_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AccountData {
    #[prost(string, tag="1")]
    pub free_balance: ::prost::alloc::string::String,
    #[prost(string, tag="2")]
    pub reserved_balance: ::prost::alloc::string::String,
    #[prost(string, tag="3")]
    pub misc_frozen_balance: ::prost::alloc::string::String,
    #[prost(string, tag="4")]
    pub fee_frozen_balance: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SystemProperties {
    #[prost(uint32, tag="1")]
    pub ss58_format: u32,
    #[prost(uint32, tag="2")]
    pub token_decimals: u32,
    #[prost(string, tag="3")]
    pub token_symbol: ::prost::alloc::string::String,
}
