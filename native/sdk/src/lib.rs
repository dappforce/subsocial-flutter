#![allow(
    clippy::just_underscores_and_digits,
    clippy::type_complexity,
    clippy::module_inception
)]

pub use scale;
pub use subxt;
mod subsocial_api;
pub use subsocial_api::api as subsocial;

#[cfg(test)]
mod tests {
    use crate::subsocial::{DefaultConfig, RuntimeApi};

    use super::*;

    type SubsocialApi = RuntimeApi<DefaultConfig>;
    const URL: &str = "wss://staging.subsocial.network:443/072-ws";
    #[tokio::test]
    async fn next_space_id() {
        let api: SubsocialApi = subxt::ClientBuilder::new()
            .set_url(URL)
            .build()
            .await
            .unwrap()
            .to_runtime_api();
        let result = api.client.properties();
        dbg!(result);
        let space_id =
            api.storage().spaces().next_space_id(None).await.unwrap();
        assert_ne!(space_id, 1001);
    }
}
