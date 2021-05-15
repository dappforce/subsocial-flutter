#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Request {
    #[prost(oneof="request::Body", tags="1, 2, 3, 4, 5, 6")]
    pub body: ::core::option::Option<request::Body>,
}
/// Nested message and enum types in `Request`.
pub mod request {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Body {
        #[prost(message, tag="1")]
        SpaceById(super::GetSpaceById),
        #[prost(message, tag="2")]
        SpaceByHandle(super::GetSpaceByHandle),
        #[prost(message, tag="3")]
        PostById(super::GetPostById),
        #[prost(message, tag="4")]
        PostIdsBySpaceId(super::GetPostIdsBySpaceId),
        #[prost(message, tag="5")]
        ReactionById(super::GetReactionById),
        #[prost(message, tag="6")]
        ReactionIdsByPostId(super::GetReactionIdsByPostId),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Response {
    #[prost(oneof="response::Body", tags="1, 2, 3, 4, 5, 6, 7")]
    pub body: ::core::option::Option<response::Body>,
}
/// Nested message and enum types in `Response`.
pub mod response {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Body {
        #[prost(message, tag="1")]
        Error(super::Error),
        #[prost(message, tag="2")]
        SpaceById(super::SpaceById),
        #[prost(message, tag="3")]
        SpaceByHandle(super::SpaceByByHandle),
        #[prost(message, tag="4")]
        PostById(super::PostById),
        #[prost(message, tag="5")]
        PostIdsBySpaceId(super::PostIdsBySpaceId),
        #[prost(message, tag="6")]
        ReactionById(super::ReactionById),
        #[prost(message, tag="7")]
        ReactionIdsByPostId(super::ReactionIdsByPostId),
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
    }
}
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
pub struct Space {
    #[prost(uint64, tag="1")]
    pub id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Post {
    #[prost(uint64, tag="1")]
    pub id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Reaction {
    #[prost(uint64, tag="1")]
    pub id: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceById {
    #[prost(message, optional, tag="1")]
    pub space: ::core::option::Option<Space>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SpaceByByHandle {
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
    pub post_id: ::prost::alloc::vec::Vec<u64>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ReactionIdsByPostId {
    #[prost(uint64, repeated, tag="1")]
    pub reaction_id: ::prost::alloc::vec::Vec<u64>,
}
