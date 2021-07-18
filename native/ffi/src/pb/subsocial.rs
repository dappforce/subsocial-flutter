#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Request {
    #[prost(oneof = "request::Body", tags = "1, 2, 3, 4, 5, 6, 7")]
    pub body: ::core::option::Option<request::Body>,
}
/// Nested message and enum types in `Request`.
pub mod request {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Body {
        #[prost(message, tag = "1")]
        SpaceById(super::GetSpaceById),
        #[prost(message, tag = "2")]
        SpaceByHandle(super::GetSpaceByHandle),
        #[prost(message, tag = "3")]
        PostById(super::GetPostById),
        #[prost(message, tag = "4")]
        PostIdsBySpaceId(super::GetPostIdsBySpaceId),
        #[prost(message, tag = "5")]
        ReactionById(super::GetReactionById),
        #[prost(message, tag = "6")]
        ReactionIdsByPostId(super::GetReactionIdsByPostId),
        #[prost(message, tag = "7")]
        ReplyIdsByPostId(super::GetReplyIdsByPostId),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Response {
    #[prost(oneof = "response::Body", tags = "1, 2, 3, 4, 5, 6, 7, 8")]
    pub body: ::core::option::Option<response::Body>,
}
/// Nested message and enum types in `Response`.
pub mod response {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Body {
        #[prost(message, tag = "1")]
        Error(super::Error),
        #[prost(message, tag = "2")]
        SpaceById(super::SpaceById),
        #[prost(message, tag = "3")]
        SpaceByHandle(super::SpaceByHandle),
        #[prost(message, tag = "4")]
        PostById(super::PostById),
        #[prost(message, tag = "5")]
        PostIdsBySpaceId(super::PostIdsBySpaceId),
        #[prost(message, tag = "6")]
        ReactionById(super::ReactionById),
        #[prost(message, tag = "7")]
        ReactionIdsByPostId(super::ReactionIdsByPostId),
        #[prost(message, tag = "8")]
        ReplyIdsByPostId(super::ReplyIdsByPostId),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Error {
    #[prost(enumeration = "error::Kind", tag = "1")]
    pub kind: i32,
    #[prost(string, tag = "2")]
    pub msg: ::prost::alloc::string::String,
}
/// Nested message and enum types in `Error`.
pub mod error {
    #[derive(
        Clone,
        Copy,
        Debug,
        PartialEq,
        Eq,
        Hash,
        PartialOrd,
        Ord,
        ::prost::Enumeration,
    )]
    #[repr(i32)]
    pub enum Kind {
        Unknown = 0,
        Network = 1,
        InvalidProto = 2,
        InvalidRequest = 3,
        NotFound = 4,
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSpaceById {
    #[prost(uint64, tag = "1")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSpaceByHandle {
    #[prost(string, tag = "1")]
    pub handle: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetPostById {
    #[prost(uint64, tag = "1")]
    pub post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetReactionById {
    #[prost(uint64, tag = "1")]
    pub reaction_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetPostIdsBySpaceId {
    #[prost(uint64, tag = "1")]
    pub space_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetReactionIdsByPostId {
    #[prost(uint64, tag = "1")]
    pub post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetReplyIdsByPostId {
    #[prost(uint64, tag = "1")]
    pub post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WhoAndWhen {
    #[prost(string, tag = "1")]
    pub account: ::prost::alloc::string::String,
    #[prost(uint64, tag = "2")]
    pub block_number: u64,
    #[prost(uint64, tag = "3")]
    pub time: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Content {
    #[prost(oneof = "content::Value", tags = "1, 2, 3")]
    pub value: ::core::option::Option<content::Value>,
}
/// Nested message and enum types in `Content`.
pub mod content {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Value {
        #[prost(bytes, tag = "1")]
        Raw(::prost::alloc::vec::Vec<u8>),
        #[prost(string, tag = "2")]
        Ipfs(::prost::alloc::string::String),
        #[prost(string, tag = "3")]
        Hyper(::prost::alloc::string::String),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostExtension {
    #[prost(oneof = "post_extension::Value", tags = "1, 2")]
    pub value: ::core::option::Option<post_extension::Value>,
}
/// Nested message and enum types in `PostExtension`.
pub mod post_extension {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Value {
        #[prost(message, tag = "1")]
        Comment(super::Comment),
        #[prost(message, tag = "2")]
        SharedPost(super::SharedPost),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Space {
    #[prost(uint64, tag = "1")]
    pub id: u64,
    #[prost(message, optional, tag = "2")]
    pub created: ::core::option::Option<WhoAndWhen>,
    #[prost(message, optional, tag = "3")]
    pub updated: ::core::option::Option<WhoAndWhen>,
    #[prost(string, tag = "4")]
    pub owner: ::prost::alloc::string::String,
    #[prost(uint64, tag = "5")]
    pub parent_id: u64,
    #[prost(string, tag = "6")]
    pub handle: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "7")]
    pub content: ::core::option::Option<Content>,
    #[prost(bool, tag = "8")]
    pub hidden: bool,
    #[prost(uint32, tag = "9")]
    pub posts_count: u32,
    #[prost(uint32, tag = "10")]
    pub hidden_posts_count: u32,
    #[prost(uint32, tag = "11")]
    pub followers_count: u32,
    #[prost(int32, tag = "12")]
    pub score: i32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Post {
    #[prost(uint64, tag = "1")]
    pub id: u64,
    #[prost(message, optional, tag = "2")]
    pub created: ::core::option::Option<WhoAndWhen>,
    #[prost(message, optional, tag = "3")]
    pub updated: ::core::option::Option<WhoAndWhen>,
    #[prost(string, tag = "4")]
    pub owner: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "5")]
    pub extension_value: ::core::option::Option<PostExtension>,
    #[prost(uint64, tag = "6")]
    pub space_id: u64,
    #[prost(message, optional, tag = "7")]
    pub content: ::core::option::Option<Content>,
    #[prost(bool, tag = "8")]
    pub hidden: bool,
    #[prost(uint32, tag = "9")]
    pub replies_count: u32,
    #[prost(uint32, tag = "10")]
    pub hidden_replies_count: u32,
    #[prost(uint32, tag = "11")]
    pub shares_count: u32,
    #[prost(uint32, tag = "12")]
    pub upvotes_count: u32,
    #[prost(uint32, tag = "13")]
    pub downvotes_count: u32,
    #[prost(int32, tag = "14")]
    pub score: i32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Comment {
    #[prost(uint64, tag = "1")]
    pub parent_id: u64,
    #[prost(uint64, tag = "2")]
    pub root_post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SharedPost {
    #[prost(uint64, tag = "1")]
    pub root_post_id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Reaction {
    #[prost(uint64, tag = "1")]
    pub id: u64,
    #[prost(message, optional, tag = "2")]
    pub created: ::core::option::Option<WhoAndWhen>,
    #[prost(message, optional, tag = "3")]
    pub updated: ::core::option::Option<WhoAndWhen>,
    #[prost(enumeration = "reaction::ReactionKind", tag = "4")]
    pub kind: i32,
}
/// Nested message and enum types in `Reaction`.
pub mod reaction {
    #[derive(
        Clone,
        Copy,
        Debug,
        PartialEq,
        Eq,
        Hash,
        PartialOrd,
        Ord,
        ::prost::Enumeration,
    )]
    #[repr(i32)]
    pub enum ReactionKind {
        Unknown = 0,
        UpVote = 1,
        DownVote = 2,
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceById {
    #[prost(message, optional, tag = "1")]
    pub space: ::core::option::Option<Space>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceByHandle {
    #[prost(message, optional, tag = "1")]
    pub space: ::core::option::Option<Space>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostById {
    #[prost(message, optional, tag = "1")]
    pub post: ::core::option::Option<Post>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ReactionById {
    #[prost(message, optional, tag = "1")]
    pub reaction: ::core::option::Option<Reaction>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PostIdsBySpaceId {
    #[prost(uint64, repeated, tag = "1")]
    pub post_ids: ::prost::alloc::vec::Vec<u64>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ReactionIdsByPostId {
    #[prost(uint64, repeated, tag = "1")]
    pub reaction_ids: ::prost::alloc::vec::Vec<u64>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ReplyIdsByPostId {
    #[prost(uint64, repeated, tag = "1")]
    pub reply_ids: ::prost::alloc::vec::Vec<u64>,
}
