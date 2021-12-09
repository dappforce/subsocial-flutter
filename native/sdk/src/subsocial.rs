#[allow(dead_code, unused_imports, non_camel_case_types)]
pub mod api {
    #[derive(:: subxt :: codec :: Encode, :: subxt :: codec :: Decode)]
    pub enum Event {
        #[codec(index = 0)]
        System(system::Event),
        #[codec(index = 4)]
        Grandpa(grandpa::Event),
        #[codec(index = 5)]
        Balances(balances::Event),
        #[codec(index = 7)]
        Sudo(sudo::Event),
        #[codec(index = 8)]
        Scheduler(scheduler::Event),
        #[codec(index = 9)]
        Utility(utility::Event),
        #[codec(index = 11)]
        Posts(posts::Event),
        #[codec(index = 13)]
        ProfileFollows(profile_follows::Event),
        #[codec(index = 14)]
        Profiles(profiles::Event),
        #[codec(index = 16)]
        Reactions(reactions::Event),
        #[codec(index = 17)]
        Roles(roles::Event),
        #[codec(index = 18)]
        SpaceFollows(space_follows::Event),
        #[codec(index = 20)]
        SpaceOwnership(space_ownership::Event),
        #[codec(index = 21)]
        Spaces(spaces::Event),
        #[codec(index = 22)]
        Utils(utils::Event),
        #[codec(index = 23)]
        Faucets(faucets::Event),
        #[codec(index = 24)]
        DotsamaClaims(dotsama_claims::Event),
    }
    pub mod system {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct FillBlock {
                pub ratio: runtime_types::sp_arithmetic::per_things::Perbill,
            }
            impl ::subxt::Call for FillBlock {
                const PALLET: &'static str = "System";
                const FUNCTION: &'static str = "fill_block";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Remark {
                pub remark: ::std::vec::Vec<::core::primitive::u8>,
            }
            impl ::subxt::Call for Remark {
                const PALLET: &'static str = "System";
                const FUNCTION: &'static str = "remark";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SetHeapPages {
                pub pages: ::core::primitive::u64,
            }
            impl ::subxt::Call for SetHeapPages {
                const PALLET: &'static str = "System";
                const FUNCTION: &'static str = "set_heap_pages";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SetCode {
                pub code: ::std::vec::Vec<::core::primitive::u8>,
            }
            impl ::subxt::Call for SetCode {
                const PALLET: &'static str = "System";
                const FUNCTION: &'static str = "set_code";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SetCodeWithoutChecks {
                pub code: ::std::vec::Vec<::core::primitive::u8>,
            }
            impl ::subxt::Call for SetCodeWithoutChecks {
                const PALLET: &'static str = "System";
                const FUNCTION: &'static str = "set_code_without_checks";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SetChangesTrieConfig { pub changes_trie_config : :: core :: option :: Option < runtime_types :: sp_core :: changes_trie :: ChangesTrieConfiguration > }
            impl ::subxt::Call for SetChangesTrieConfig {
                const PALLET: &'static str = "System";
                const FUNCTION: &'static str = "set_changes_trie_config";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SetStorage {
                pub items: ::std::vec::Vec<(
                    ::std::vec::Vec<::core::primitive::u8>,
                    ::std::vec::Vec<::core::primitive::u8>,
                )>,
            }
            impl ::subxt::Call for SetStorage {
                const PALLET: &'static str = "System";
                const FUNCTION: &'static str = "set_storage";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct KillStorage {
                pub keys:
                    ::std::vec::Vec<::std::vec::Vec<::core::primitive::u8>>,
            }
            impl ::subxt::Call for KillStorage {
                const PALLET: &'static str = "System";
                const FUNCTION: &'static str = "kill_storage";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct KillPrefix {
                pub prefix: ::std::vec::Vec<::core::primitive::u8>,
                pub subkeys: ::core::primitive::u32,
            }
            impl ::subxt::Call for KillPrefix {
                const PALLET: &'static str = "System";
                const FUNCTION: &'static str = "kill_prefix";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RemarkWithEvent {
                pub remark: ::std::vec::Vec<::core::primitive::u8>,
            }
            impl ::subxt::Call for RemarkWithEvent {
                const PALLET: &'static str = "System";
                const FUNCTION: &'static str = "remark_with_event";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn fill_block(
                    &self,
                    ratio: runtime_types::sp_arithmetic::per_things::Perbill,
                ) -> ::subxt::SubmittableExtrinsic<T, FillBlock>
                {
                    let call = FillBlock { ratio };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn remark(
                    &self,
                    remark: ::std::vec::Vec<::core::primitive::u8>,
                ) -> ::subxt::SubmittableExtrinsic<T, Remark> {
                    let call = Remark { remark };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn set_heap_pages(
                    &self,
                    pages: ::core::primitive::u64,
                ) -> ::subxt::SubmittableExtrinsic<T, SetHeapPages>
                {
                    let call = SetHeapPages { pages };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn set_code(
                    &self,
                    code: ::std::vec::Vec<::core::primitive::u8>,
                ) -> ::subxt::SubmittableExtrinsic<T, SetCode> {
                    let call = SetCode { code };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn set_code_without_checks(
                    &self,
                    code: ::std::vec::Vec<::core::primitive::u8>,
                ) -> ::subxt::SubmittableExtrinsic<T, SetCodeWithoutChecks>
                {
                    let call = SetCodeWithoutChecks { code };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn set_changes_trie_config(
                    &self,
                    changes_trie_config : :: core :: option :: Option < runtime_types :: sp_core :: changes_trie :: ChangesTrieConfiguration >,
                ) -> ::subxt::SubmittableExtrinsic<T, SetChangesTrieConfig>
                {
                    let call = SetChangesTrieConfig {
                        changes_trie_config,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn set_storage(
                    &self,
                    items: ::std::vec::Vec<(
                        ::std::vec::Vec<::core::primitive::u8>,
                        ::std::vec::Vec<::core::primitive::u8>,
                    )>,
                ) -> ::subxt::SubmittableExtrinsic<T, SetStorage>
                {
                    let call = SetStorage { items };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn kill_storage(
                    &self,
                    keys: ::std::vec::Vec<
                        ::std::vec::Vec<::core::primitive::u8>,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, KillStorage>
                {
                    let call = KillStorage { keys };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn kill_prefix(
                    &self,
                    prefix: ::std::vec::Vec<::core::primitive::u8>,
                    subkeys: ::core::primitive::u32,
                ) -> ::subxt::SubmittableExtrinsic<T, KillPrefix>
                {
                    let call = KillPrefix { prefix, subkeys };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn remark_with_event(
                    &self,
                    remark: ::std::vec::Vec<::core::primitive::u8>,
                ) -> ::subxt::SubmittableExtrinsic<T, RemarkWithEvent>
                {
                    let call = RemarkWithEvent { remark };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::frame_system::pallet::Event;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ExtrinsicSuccess(
                pub runtime_types::frame_support::weights::DispatchInfo,
            );
            impl ::subxt::Event for ExtrinsicSuccess {
                const PALLET: &'static str = "System";
                const EVENT: &'static str = "ExtrinsicSuccess";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ExtrinsicFailed(
                pub runtime_types::sp_runtime::DispatchError,
                pub runtime_types::frame_support::weights::DispatchInfo,
            );
            impl ::subxt::Event for ExtrinsicFailed {
                const PALLET: &'static str = "System";
                const EVENT: &'static str = "ExtrinsicFailed";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct CodeUpdated {}
            impl ::subxt::Event for CodeUpdated {
                const PALLET: &'static str = "System";
                const EVENT: &'static str = "CodeUpdated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct NewAccount(pub ::subxt::sp_core::crypto::AccountId32);
            impl ::subxt::Event for NewAccount {
                const PALLET: &'static str = "System";
                const EVENT: &'static str = "NewAccount";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct KilledAccount(pub ::subxt::sp_core::crypto::AccountId32);
            impl ::subxt::Event for KilledAccount {
                const PALLET: &'static str = "System";
                const EVENT: &'static str = "KilledAccount";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Remarked(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::subxt::sp_core::H256,
            );
            impl ::subxt::Event for Remarked {
                const PALLET: &'static str = "System";
                const EVENT: &'static str = "Remarked";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct Account(pub ::subxt::sp_core::crypto::AccountId32);
            impl ::subxt::StorageEntry for Account {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "Account";
                type Value = runtime_types::frame_system::AccountInfo<
                    ::core::primitive::u32,
                    runtime_types::pallet_balances::AccountData<
                        ::core::primitive::u128,
                    >,
                >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct ExtrinsicCount;
            impl ::subxt::StorageEntry for ExtrinsicCount {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "ExtrinsicCount";
                type Value = ::core::primitive::u32;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct BlockWeight;
            impl ::subxt::StorageEntry for BlockWeight {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "BlockWeight";
                type Value =
                    runtime_types::frame_support::weights::PerDispatchClass<
                        ::core::primitive::u64,
                    >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct AllExtrinsicsLen;
            impl ::subxt::StorageEntry for AllExtrinsicsLen {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "AllExtrinsicsLen";
                type Value = ::core::primitive::u32;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct BlockHash(pub ::core::primitive::u32);
            impl ::subxt::StorageEntry for BlockHash {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "BlockHash";
                type Value = ::subxt::sp_core::H256;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct ExtrinsicData(pub ::core::primitive::u32);
            impl ::subxt::StorageEntry for ExtrinsicData {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "ExtrinsicData";
                type Value = ::std::vec::Vec<::core::primitive::u8>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct Number;
            impl ::subxt::StorageEntry for Number {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "Number";
                type Value = ::core::primitive::u32;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct ParentHash;
            impl ::subxt::StorageEntry for ParentHash {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "ParentHash";
                type Value = ::subxt::sp_core::H256;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct Digest;
            impl ::subxt::StorageEntry for Digest {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "Digest";
                type Value = runtime_types::sp_runtime::generic::digest::Digest<
                    ::subxt::sp_core::H256,
                >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct Events;
            impl ::subxt::StorageEntry for Events {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "Events";
                type Value = ::std::vec::Vec<
                    runtime_types::frame_system::EventRecord<
                        runtime_types::subsocial_runtime::Event,
                        ::subxt::sp_core::H256,
                    >,
                >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct EventCount;
            impl ::subxt::StorageEntry for EventCount {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "EventCount";
                type Value = ::core::primitive::u32;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct EventTopics(pub ::subxt::sp_core::H256);
            impl ::subxt::StorageEntry for EventTopics {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "EventTopics";
                type Value = ::std::vec::Vec<(
                    ::core::primitive::u32,
                    ::core::primitive::u32,
                )>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct LastRuntimeUpgrade;
            impl ::subxt::StorageEntry for LastRuntimeUpgrade {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "LastRuntimeUpgrade";
                type Value =
                    runtime_types::frame_system::LastRuntimeUpgradeInfo;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct UpgradedToU32RefCount;
            impl ::subxt::StorageEntry for UpgradedToU32RefCount {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "UpgradedToU32RefCount";
                type Value = ::core::primitive::bool;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct UpgradedToTripleRefCount;
            impl ::subxt::StorageEntry for UpgradedToTripleRefCount {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "UpgradedToTripleRefCount";
                type Value = ::core::primitive::bool;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct ExecutionPhase;
            impl ::subxt::StorageEntry for ExecutionPhase {
                const PALLET: &'static str = "System";
                const STORAGE: &'static str = "ExecutionPhase";
                type Value = runtime_types::frame_system::Phase;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn account(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    runtime_types::frame_system::AccountInfo<
                        ::core::primitive::u32,
                        runtime_types::pallet_balances::AccountData<
                            ::core::primitive::u128,
                        >,
                    >,
                    ::subxt::Error,
                > {
                    let entry = Account(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn account_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, Account>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn extrinsic_count(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<::core::primitive::u32>,
                    ::subxt::Error,
                > {
                    let entry = ExtrinsicCount;
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn block_weight(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    runtime_types::frame_support::weights::PerDispatchClass<
                        ::core::primitive::u64,
                    >,
                    ::subxt::Error,
                > {
                    let entry = BlockWeight;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn all_extrinsics_len(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<::core::primitive::u32>,
                    ::subxt::Error,
                > {
                    let entry = AllExtrinsicsLen;
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn block_hash(
                    &self,
                    _0: ::core::primitive::u32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::sp_core::H256,
                    ::subxt::Error,
                > {
                    let entry = BlockHash(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn block_hash_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, BlockHash>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn extrinsic_data(
                    &self,
                    _0: ::core::primitive::u32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::core::primitive::u8>,
                    ::subxt::Error,
                > {
                    let entry = ExtrinsicData(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn extrinsic_data_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, ExtrinsicData>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn number(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::u32,
                    ::subxt::Error,
                > {
                    let entry = Number;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn parent_hash(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::sp_core::H256,
                    ::subxt::Error,
                > {
                    let entry = ParentHash;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn digest(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    runtime_types::sp_runtime::generic::digest::Digest<
                        ::subxt::sp_core::H256,
                    >,
                    ::subxt::Error,
                > {
                    let entry = Digest;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn events(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<
                        runtime_types::frame_system::EventRecord<
                            runtime_types::subsocial_runtime::Event,
                            ::subxt::sp_core::H256,
                        >,
                    >,
                    ::subxt::Error,
                > {
                    let entry = Events;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn event_count(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::u32,
                    ::subxt::Error,
                > {
                    let entry = EventCount;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn event_topics(
                    &self,
                    _0: ::subxt::sp_core::H256,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<(
                        ::core::primitive::u32,
                        ::core::primitive::u32,
                    )>,
                    ::subxt::Error,
                > {
                    let entry = EventTopics(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn event_topics_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, EventTopics>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn last_runtime_upgrade(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<
                        runtime_types::frame_system::LastRuntimeUpgradeInfo,
                    >,
                    ::subxt::Error,
                > {
                    let entry = LastRuntimeUpgrade;
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn upgraded_to_u32_ref_count(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::bool,
                    ::subxt::Error,
                > {
                    let entry = UpgradedToU32RefCount;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn upgraded_to_triple_ref_count(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::bool,
                    ::subxt::Error,
                > {
                    let entry = UpgradedToTripleRefCount;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn execution_phase(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<runtime_types::frame_system::Phase>,
                    ::subxt::Error,
                > {
                    let entry = ExecutionPhase;
                    self.client.storage().fetch(&entry, hash).await
                }
            }
        }
    }
    pub mod randomness_collective_flip {
        use super::runtime_types;
        pub mod storage {
            use super::runtime_types;
            pub struct RandomMaterial;
            impl ::subxt::StorageEntry for RandomMaterial {
                const PALLET: &'static str = "RandomnessCollectiveFlip";
                const STORAGE: &'static str = "RandomMaterial";
                type Value = ::std::vec::Vec<::subxt::sp_core::H256>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn random_material(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::subxt::sp_core::H256>,
                    ::subxt::Error,
                > {
                    let entry = RandomMaterial;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
            }
        }
    }
    pub mod timestamp {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Set {
                #[codec(compact)]
                pub now: ::core::primitive::u64,
            }
            impl ::subxt::Call for Set {
                const PALLET: &'static str = "Timestamp";
                const FUNCTION: &'static str = "set";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn set(
                    &self,
                    now: ::core::primitive::u64,
                ) -> ::subxt::SubmittableExtrinsic<T, Set> {
                    let call = Set { now };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct Now;
            impl ::subxt::StorageEntry for Now {
                const PALLET: &'static str = "Timestamp";
                const STORAGE: &'static str = "Now";
                type Value = ::core::primitive::u64;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct DidUpdate;
            impl ::subxt::StorageEntry for DidUpdate {
                const PALLET: &'static str = "Timestamp";
                const STORAGE: &'static str = "DidUpdate";
                type Value = ::core::primitive::bool;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn now(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::u64,
                    ::subxt::Error,
                > {
                    let entry = Now;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn did_update(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::bool,
                    ::subxt::Error,
                > {
                    let entry = DidUpdate;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
            }
        }
    }
    pub mod aura {
        use super::runtime_types;
    }
    pub mod grandpa {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ReportEquivocation {
                pub equivocation_proof:
                    runtime_types::sp_finality_grandpa::EquivocationProof<
                        ::subxt::sp_core::H256,
                        ::core::primitive::u32,
                    >,
                pub key_owner_proof: runtime_types::sp_core::Void,
            }
            impl ::subxt::Call for ReportEquivocation {
                const PALLET: &'static str = "Grandpa";
                const FUNCTION: &'static str = "report_equivocation";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ReportEquivocationUnsigned {
                pub equivocation_proof:
                    runtime_types::sp_finality_grandpa::EquivocationProof<
                        ::subxt::sp_core::H256,
                        ::core::primitive::u32,
                    >,
                pub key_owner_proof: runtime_types::sp_core::Void,
            }
            impl ::subxt::Call for ReportEquivocationUnsigned {
                const PALLET: &'static str = "Grandpa";
                const FUNCTION: &'static str = "report_equivocation_unsigned";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct NoteStalled {
                pub delay: ::core::primitive::u32,
                pub best_finalized_block_number: ::core::primitive::u32,
            }
            impl ::subxt::Call for NoteStalled {
                const PALLET: &'static str = "Grandpa";
                const FUNCTION: &'static str = "note_stalled";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn report_equivocation(
                    &self,
                    equivocation_proof : runtime_types :: sp_finality_grandpa :: EquivocationProof < :: subxt :: sp_core :: H256 , :: core :: primitive :: u32 >,
                    key_owner_proof: runtime_types::sp_core::Void,
                ) -> ::subxt::SubmittableExtrinsic<T, ReportEquivocation>
                {
                    let call = ReportEquivocation {
                        equivocation_proof,
                        key_owner_proof,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn report_equivocation_unsigned(
                    &self,
                    equivocation_proof : runtime_types :: sp_finality_grandpa :: EquivocationProof < :: subxt :: sp_core :: H256 , :: core :: primitive :: u32 >,
                    key_owner_proof: runtime_types::sp_core::Void,
                ) -> ::subxt::SubmittableExtrinsic<T, ReportEquivocationUnsigned>
                {
                    let call = ReportEquivocationUnsigned {
                        equivocation_proof,
                        key_owner_proof,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn note_stalled(
                    &self,
                    delay: ::core::primitive::u32,
                    best_finalized_block_number: ::core::primitive::u32,
                ) -> ::subxt::SubmittableExtrinsic<T, NoteStalled>
                {
                    let call = NoteStalled {
                        delay,
                        best_finalized_block_number,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_grandpa::pallet::Event;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct NewAuthorities(
                pub  ::std::vec::Vec<(
                    runtime_types::sp_finality_grandpa::app::Public,
                    ::core::primitive::u64,
                )>,
            );
            impl ::subxt::Event for NewAuthorities {
                const PALLET: &'static str = "Grandpa";
                const EVENT: &'static str = "NewAuthorities";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Paused {}
            impl ::subxt::Event for Paused {
                const PALLET: &'static str = "Grandpa";
                const EVENT: &'static str = "Paused";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Resumed {}
            impl ::subxt::Event for Resumed {
                const PALLET: &'static str = "Grandpa";
                const EVENT: &'static str = "Resumed";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct State;
            impl ::subxt::StorageEntry for State {
                const PALLET: &'static str = "Grandpa";
                const STORAGE: &'static str = "State";
                type Value = runtime_types::pallet_grandpa::StoredState<
                    ::core::primitive::u32,
                >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct PendingChange;
            impl ::subxt::StorageEntry for PendingChange {
                const PALLET: &'static str = "Grandpa";
                const STORAGE: &'static str = "PendingChange";
                type Value = runtime_types::pallet_grandpa::StoredPendingChange<
                    ::core::primitive::u32,
                >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct NextForced;
            impl ::subxt::StorageEntry for NextForced {
                const PALLET: &'static str = "Grandpa";
                const STORAGE: &'static str = "NextForced";
                type Value = ::core::primitive::u32;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct Stalled;
            impl ::subxt::StorageEntry for Stalled {
                const PALLET: &'static str = "Grandpa";
                const STORAGE: &'static str = "Stalled";
                type Value = (::core::primitive::u32, ::core::primitive::u32);
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct CurrentSetId;
            impl ::subxt::StorageEntry for CurrentSetId {
                const PALLET: &'static str = "Grandpa";
                const STORAGE: &'static str = "CurrentSetId";
                type Value = ::core::primitive::u64;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct SetIdSession(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for SetIdSession {
                const PALLET: &'static str = "Grandpa";
                const STORAGE: &'static str = "SetIdSession";
                type Value = ::core::primitive::u32;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn state(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    runtime_types::pallet_grandpa::StoredState<
                        ::core::primitive::u32,
                    >,
                    ::subxt::Error,
                > {
                    let entry = State;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn pending_change(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<
                        runtime_types::pallet_grandpa::StoredPendingChange<
                            ::core::primitive::u32,
                        >,
                    >,
                    ::subxt::Error,
                > {
                    let entry = PendingChange;
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn next_forced(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<::core::primitive::u32>,
                    ::subxt::Error,
                > {
                    let entry = NextForced;
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn stalled(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<(
                        ::core::primitive::u32,
                        ::core::primitive::u32,
                    )>,
                    ::subxt::Error,
                > {
                    let entry = Stalled;
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn current_set_id(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::u64,
                    ::subxt::Error,
                > {
                    let entry = CurrentSetId;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn set_id_session(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<::core::primitive::u32>,
                    ::subxt::Error,
                > {
                    let entry = SetIdSession(_0);
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn set_id_session_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, SetIdSession>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod balances {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Transfer {
                pub dest: ::subxt::sp_runtime::MultiAddress<
                    ::subxt::sp_core::crypto::AccountId32,
                    (),
                >,
                #[codec(compact)]
                pub value: ::core::primitive::u128,
            }
            impl ::subxt::Call for Transfer {
                const PALLET: &'static str = "Balances";
                const FUNCTION: &'static str = "transfer";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SetBalance {
                pub who: ::subxt::sp_runtime::MultiAddress<
                    ::subxt::sp_core::crypto::AccountId32,
                    (),
                >,
                #[codec(compact)]
                pub new_free: ::core::primitive::u128,
                #[codec(compact)]
                pub new_reserved: ::core::primitive::u128,
            }
            impl ::subxt::Call for SetBalance {
                const PALLET: &'static str = "Balances";
                const FUNCTION: &'static str = "set_balance";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ForceTransfer {
                pub source: ::subxt::sp_runtime::MultiAddress<
                    ::subxt::sp_core::crypto::AccountId32,
                    (),
                >,
                pub dest: ::subxt::sp_runtime::MultiAddress<
                    ::subxt::sp_core::crypto::AccountId32,
                    (),
                >,
                #[codec(compact)]
                pub value: ::core::primitive::u128,
            }
            impl ::subxt::Call for ForceTransfer {
                const PALLET: &'static str = "Balances";
                const FUNCTION: &'static str = "force_transfer";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct TransferKeepAlive {
                pub dest: ::subxt::sp_runtime::MultiAddress<
                    ::subxt::sp_core::crypto::AccountId32,
                    (),
                >,
                #[codec(compact)]
                pub value: ::core::primitive::u128,
            }
            impl ::subxt::Call for TransferKeepAlive {
                const PALLET: &'static str = "Balances";
                const FUNCTION: &'static str = "transfer_keep_alive";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct TransferAll {
                pub dest: ::subxt::sp_runtime::MultiAddress<
                    ::subxt::sp_core::crypto::AccountId32,
                    (),
                >,
                pub keep_alive: ::core::primitive::bool,
            }
            impl ::subxt::Call for TransferAll {
                const PALLET: &'static str = "Balances";
                const FUNCTION: &'static str = "transfer_all";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ForceUnreserve {
                pub who: ::subxt::sp_runtime::MultiAddress<
                    ::subxt::sp_core::crypto::AccountId32,
                    (),
                >,
                pub amount: ::core::primitive::u128,
            }
            impl ::subxt::Call for ForceUnreserve {
                const PALLET: &'static str = "Balances";
                const FUNCTION: &'static str = "force_unreserve";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn transfer(
                    &self,
                    dest: ::subxt::sp_runtime::MultiAddress<
                        ::subxt::sp_core::crypto::AccountId32,
                        (),
                    >,
                    value: ::core::primitive::u128,
                ) -> ::subxt::SubmittableExtrinsic<T, Transfer>
                {
                    let call = Transfer { dest, value };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn set_balance(
                    &self,
                    who: ::subxt::sp_runtime::MultiAddress<
                        ::subxt::sp_core::crypto::AccountId32,
                        (),
                    >,
                    new_free: ::core::primitive::u128,
                    new_reserved: ::core::primitive::u128,
                ) -> ::subxt::SubmittableExtrinsic<T, SetBalance>
                {
                    let call = SetBalance {
                        who,
                        new_free,
                        new_reserved,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn force_transfer(
                    &self,
                    source: ::subxt::sp_runtime::MultiAddress<
                        ::subxt::sp_core::crypto::AccountId32,
                        (),
                    >,
                    dest: ::subxt::sp_runtime::MultiAddress<
                        ::subxt::sp_core::crypto::AccountId32,
                        (),
                    >,
                    value: ::core::primitive::u128,
                ) -> ::subxt::SubmittableExtrinsic<T, ForceTransfer>
                {
                    let call = ForceTransfer {
                        source,
                        dest,
                        value,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn transfer_keep_alive(
                    &self,
                    dest: ::subxt::sp_runtime::MultiAddress<
                        ::subxt::sp_core::crypto::AccountId32,
                        (),
                    >,
                    value: ::core::primitive::u128,
                ) -> ::subxt::SubmittableExtrinsic<T, TransferKeepAlive>
                {
                    let call = TransferKeepAlive { dest, value };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn transfer_all(
                    &self,
                    dest: ::subxt::sp_runtime::MultiAddress<
                        ::subxt::sp_core::crypto::AccountId32,
                        (),
                    >,
                    keep_alive: ::core::primitive::bool,
                ) -> ::subxt::SubmittableExtrinsic<T, TransferAll>
                {
                    let call = TransferAll { dest, keep_alive };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn force_unreserve(
                    &self,
                    who: ::subxt::sp_runtime::MultiAddress<
                        ::subxt::sp_core::crypto::AccountId32,
                        (),
                    >,
                    amount: ::core::primitive::u128,
                ) -> ::subxt::SubmittableExtrinsic<T, ForceUnreserve>
                {
                    let call = ForceUnreserve { who, amount };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_balances::pallet::Event;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Endowed(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u128,
            );
            impl ::subxt::Event for Endowed {
                const PALLET: &'static str = "Balances";
                const EVENT: &'static str = "Endowed";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct DustLost(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u128,
            );
            impl ::subxt::Event for DustLost {
                const PALLET: &'static str = "Balances";
                const EVENT: &'static str = "DustLost";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Transfer(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u128,
            );
            impl ::subxt::Event for Transfer {
                const PALLET: &'static str = "Balances";
                const EVENT: &'static str = "Transfer";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct BalanceSet(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u128,
                pub ::core::primitive::u128,
            );
            impl ::subxt::Event for BalanceSet {
                const PALLET: &'static str = "Balances";
                const EVENT: &'static str = "BalanceSet";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Reserved(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u128,
            );
            impl ::subxt::Event for Reserved {
                const PALLET: &'static str = "Balances";
                const EVENT: &'static str = "Reserved";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Unreserved(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u128,
            );
            impl ::subxt::Event for Unreserved {
                const PALLET: &'static str = "Balances";
                const EVENT: &'static str = "Unreserved";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ReserveRepatriated (pub :: subxt :: sp_core :: crypto :: AccountId32 , pub :: subxt :: sp_core :: crypto :: AccountId32 , pub :: core :: primitive :: u128 , pub runtime_types :: frame_support :: traits :: tokens :: misc :: BalanceStatus) ;
            impl ::subxt::Event for ReserveRepatriated {
                const PALLET: &'static str = "Balances";
                const EVENT: &'static str = "ReserveRepatriated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Deposit(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u128,
            );
            impl ::subxt::Event for Deposit {
                const PALLET: &'static str = "Balances";
                const EVENT: &'static str = "Deposit";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Withdraw(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u128,
            );
            impl ::subxt::Event for Withdraw {
                const PALLET: &'static str = "Balances";
                const EVENT: &'static str = "Withdraw";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Slashed(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u128,
            );
            impl ::subxt::Event for Slashed {
                const PALLET: &'static str = "Balances";
                const EVENT: &'static str = "Slashed";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct TotalIssuance;
            impl ::subxt::StorageEntry for TotalIssuance {
                const PALLET: &'static str = "Balances";
                const STORAGE: &'static str = "TotalIssuance";
                type Value = ::core::primitive::u128;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct Account(pub ::subxt::sp_core::crypto::AccountId32);
            impl ::subxt::StorageEntry for Account {
                const PALLET: &'static str = "Balances";
                const STORAGE: &'static str = "Account";
                type Value = runtime_types::pallet_balances::AccountData<
                    ::core::primitive::u128,
                >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct Locks(pub ::subxt::sp_core::crypto::AccountId32);
            impl ::subxt::StorageEntry for Locks {
                const PALLET: &'static str = "Balances";
                const STORAGE: &'static str = "Locks";
                type Value = runtime_types :: frame_support :: storage :: weak_bounded_vec :: WeakBoundedVec < runtime_types :: pallet_balances :: BalanceLock < :: core :: primitive :: u128 > > ;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct Reserves(pub ::subxt::sp_core::crypto::AccountId32);
            impl ::subxt::StorageEntry for Reserves {
                const PALLET: &'static str = "Balances";
                const STORAGE: &'static str = "Reserves";
                type Value = runtime_types :: frame_support :: storage :: bounded_vec :: BoundedVec < runtime_types :: pallet_balances :: ReserveData < [:: core :: primitive :: u8 ; 8usize] , :: core :: primitive :: u128 > > ;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct StorageVersion;
            impl ::subxt::StorageEntry for StorageVersion {
                const PALLET: &'static str = "Balances";
                const STORAGE: &'static str = "StorageVersion";
                type Value = runtime_types::pallet_balances::Releases;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn total_issuance(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::u128,
                    ::subxt::Error,
                > {
                    let entry = TotalIssuance;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn account(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    runtime_types::pallet_balances::AccountData<
                        ::core::primitive::u128,
                    >,
                    ::subxt::Error,
                > {
                    let entry = Account(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn account_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, Account>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }                pub async fn locks (& self , _0 : :: subxt :: sp_core :: crypto :: AccountId32 , hash : :: core :: option :: Option < T :: Hash > ,) -> :: core :: result :: Result < runtime_types :: frame_support :: storage :: weak_bounded_vec :: WeakBoundedVec < runtime_types :: pallet_balances :: BalanceLock < :: core :: primitive :: u128 > > , :: subxt :: Error >{
                    let entry = Locks(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn locks_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, Locks>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }                pub async fn reserves (& self , _0 : :: subxt :: sp_core :: crypto :: AccountId32 , hash : :: core :: option :: Option < T :: Hash > ,) -> :: core :: result :: Result < runtime_types :: frame_support :: storage :: bounded_vec :: BoundedVec < runtime_types :: pallet_balances :: ReserveData < [:: core :: primitive :: u8 ; 8usize] , :: core :: primitive :: u128 > > , :: subxt :: Error >{
                    let entry = Reserves(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn reserves_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, Reserves>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn storage_version(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    runtime_types::pallet_balances::Releases,
                    ::subxt::Error,
                > {
                    let entry = StorageVersion;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
            }
        }
    }
    pub mod transaction_payment {
        use super::runtime_types;
        pub mod storage {
            use super::runtime_types;
            pub struct NextFeeMultiplier;
            impl ::subxt::StorageEntry for NextFeeMultiplier {
                const PALLET: &'static str = "TransactionPayment";
                const STORAGE: &'static str = "NextFeeMultiplier";
                type Value =
                    runtime_types::sp_arithmetic::fixed_point::FixedU128;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct StorageVersion;
            impl ::subxt::StorageEntry for StorageVersion {
                const PALLET: &'static str = "TransactionPayment";
                const STORAGE: &'static str = "StorageVersion";
                type Value =
                    runtime_types::pallet_transaction_payment::Releases;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn next_fee_multiplier(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    runtime_types::sp_arithmetic::fixed_point::FixedU128,
                    ::subxt::Error,
                > {
                    let entry = NextFeeMultiplier;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn storage_version(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    runtime_types::pallet_transaction_payment::Releases,
                    ::subxt::Error,
                > {
                    let entry = StorageVersion;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
            }
        }
    }
    pub mod sudo {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Sudo {
                pub call: runtime_types::subsocial_runtime::Call,
            }
            impl ::subxt::Call for Sudo {
                const PALLET: &'static str = "Sudo";
                const FUNCTION: &'static str = "sudo";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SudoUncheckedWeight {
                pub call: runtime_types::subsocial_runtime::Call,
                pub weight: ::core::primitive::u64,
            }
            impl ::subxt::Call for SudoUncheckedWeight {
                const PALLET: &'static str = "Sudo";
                const FUNCTION: &'static str = "sudo_unchecked_weight";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SetKey {
                pub new: ::subxt::sp_runtime::MultiAddress<
                    ::subxt::sp_core::crypto::AccountId32,
                    (),
                >,
            }
            impl ::subxt::Call for SetKey {
                const PALLET: &'static str = "Sudo";
                const FUNCTION: &'static str = "set_key";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SudoAs {
                pub who: ::subxt::sp_runtime::MultiAddress<
                    ::subxt::sp_core::crypto::AccountId32,
                    (),
                >,
                pub call: runtime_types::subsocial_runtime::Call,
            }
            impl ::subxt::Call for SudoAs {
                const PALLET: &'static str = "Sudo";
                const FUNCTION: &'static str = "sudo_as";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn sudo(
                    &self,
                    call: runtime_types::subsocial_runtime::Call,
                ) -> ::subxt::SubmittableExtrinsic<T, Sudo> {
                    let call = Sudo { call };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn sudo_unchecked_weight(
                    &self,
                    call: runtime_types::subsocial_runtime::Call,
                    weight: ::core::primitive::u64,
                ) -> ::subxt::SubmittableExtrinsic<T, SudoUncheckedWeight>
                {
                    let call = SudoUncheckedWeight { call, weight };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn set_key(
                    &self,
                    new: ::subxt::sp_runtime::MultiAddress<
                        ::subxt::sp_core::crypto::AccountId32,
                        (),
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, SetKey> {
                    let call = SetKey { new };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn sudo_as(
                    &self,
                    who: ::subxt::sp_runtime::MultiAddress<
                        ::subxt::sp_core::crypto::AccountId32,
                        (),
                    >,
                    call: runtime_types::subsocial_runtime::Call,
                ) -> ::subxt::SubmittableExtrinsic<T, SudoAs> {
                    let call = SudoAs { who, call };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_sudo::pallet::Event;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Sudid(
                pub  ::core::result::Result<
                    (),
                    runtime_types::sp_runtime::DispatchError,
                >,
            );
            impl ::subxt::Event for Sudid {
                const PALLET: &'static str = "Sudo";
                const EVENT: &'static str = "Sudid";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct KeyChanged(pub ::subxt::sp_core::crypto::AccountId32);
            impl ::subxt::Event for KeyChanged {
                const PALLET: &'static str = "Sudo";
                const EVENT: &'static str = "KeyChanged";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SudoAsDone(
                pub  ::core::result::Result<
                    (),
                    runtime_types::sp_runtime::DispatchError,
                >,
            );
            impl ::subxt::Event for SudoAsDone {
                const PALLET: &'static str = "Sudo";
                const EVENT: &'static str = "SudoAsDone";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct Key;
            impl ::subxt::StorageEntry for Key {
                const PALLET: &'static str = "Sudo";
                const STORAGE: &'static str = "Key";
                type Value = ::subxt::sp_core::crypto::AccountId32;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn key(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::sp_core::crypto::AccountId32,
                    ::subxt::Error,
                > {
                    let entry = Key;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
            }
        }
    }
    pub mod scheduler {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Schedule {
                pub when: ::core::primitive::u32,
                pub maybe_periodic: ::core::option::Option<(
                    ::core::primitive::u32,
                    ::core::primitive::u32,
                )>,
                pub priority: ::core::primitive::u8,
                pub call: runtime_types::subsocial_runtime::Call,
            }
            impl ::subxt::Call for Schedule {
                const PALLET: &'static str = "Scheduler";
                const FUNCTION: &'static str = "schedule";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Cancel {
                pub when: ::core::primitive::u32,
                pub index: ::core::primitive::u32,
            }
            impl ::subxt::Call for Cancel {
                const PALLET: &'static str = "Scheduler";
                const FUNCTION: &'static str = "cancel";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ScheduleNamed {
                pub id: ::std::vec::Vec<::core::primitive::u8>,
                pub when: ::core::primitive::u32,
                pub maybe_periodic: ::core::option::Option<(
                    ::core::primitive::u32,
                    ::core::primitive::u32,
                )>,
                pub priority: ::core::primitive::u8,
                pub call: runtime_types::subsocial_runtime::Call,
            }
            impl ::subxt::Call for ScheduleNamed {
                const PALLET: &'static str = "Scheduler";
                const FUNCTION: &'static str = "schedule_named";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct CancelNamed {
                pub id: ::std::vec::Vec<::core::primitive::u8>,
            }
            impl ::subxt::Call for CancelNamed {
                const PALLET: &'static str = "Scheduler";
                const FUNCTION: &'static str = "cancel_named";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ScheduleAfter {
                pub after: ::core::primitive::u32,
                pub maybe_periodic: ::core::option::Option<(
                    ::core::primitive::u32,
                    ::core::primitive::u32,
                )>,
                pub priority: ::core::primitive::u8,
                pub call: runtime_types::subsocial_runtime::Call,
            }
            impl ::subxt::Call for ScheduleAfter {
                const PALLET: &'static str = "Scheduler";
                const FUNCTION: &'static str = "schedule_after";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ScheduleNamedAfter {
                pub id: ::std::vec::Vec<::core::primitive::u8>,
                pub after: ::core::primitive::u32,
                pub maybe_periodic: ::core::option::Option<(
                    ::core::primitive::u32,
                    ::core::primitive::u32,
                )>,
                pub priority: ::core::primitive::u8,
                pub call: runtime_types::subsocial_runtime::Call,
            }
            impl ::subxt::Call for ScheduleNamedAfter {
                const PALLET: &'static str = "Scheduler";
                const FUNCTION: &'static str = "schedule_named_after";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn schedule(
                    &self,
                    when: ::core::primitive::u32,
                    maybe_periodic: ::core::option::Option<(
                        ::core::primitive::u32,
                        ::core::primitive::u32,
                    )>,
                    priority: ::core::primitive::u8,
                    call: runtime_types::subsocial_runtime::Call,
                ) -> ::subxt::SubmittableExtrinsic<T, Schedule>
                {
                    let call = Schedule {
                        when,
                        maybe_periodic,
                        priority,
                        call,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn cancel(
                    &self,
                    when: ::core::primitive::u32,
                    index: ::core::primitive::u32,
                ) -> ::subxt::SubmittableExtrinsic<T, Cancel> {
                    let call = Cancel { when, index };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn schedule_named(
                    &self,
                    id: ::std::vec::Vec<::core::primitive::u8>,
                    when: ::core::primitive::u32,
                    maybe_periodic: ::core::option::Option<(
                        ::core::primitive::u32,
                        ::core::primitive::u32,
                    )>,
                    priority: ::core::primitive::u8,
                    call: runtime_types::subsocial_runtime::Call,
                ) -> ::subxt::SubmittableExtrinsic<T, ScheduleNamed>
                {
                    let call = ScheduleNamed {
                        id,
                        when,
                        maybe_periodic,
                        priority,
                        call,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn cancel_named(
                    &self,
                    id: ::std::vec::Vec<::core::primitive::u8>,
                ) -> ::subxt::SubmittableExtrinsic<T, CancelNamed>
                {
                    let call = CancelNamed { id };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn schedule_after(
                    &self,
                    after: ::core::primitive::u32,
                    maybe_periodic: ::core::option::Option<(
                        ::core::primitive::u32,
                        ::core::primitive::u32,
                    )>,
                    priority: ::core::primitive::u8,
                    call: runtime_types::subsocial_runtime::Call,
                ) -> ::subxt::SubmittableExtrinsic<T, ScheduleAfter>
                {
                    let call = ScheduleAfter {
                        after,
                        maybe_periodic,
                        priority,
                        call,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn schedule_named_after(
                    &self,
                    id: ::std::vec::Vec<::core::primitive::u8>,
                    after: ::core::primitive::u32,
                    maybe_periodic: ::core::option::Option<(
                        ::core::primitive::u32,
                        ::core::primitive::u32,
                    )>,
                    priority: ::core::primitive::u8,
                    call: runtime_types::subsocial_runtime::Call,
                ) -> ::subxt::SubmittableExtrinsic<T, ScheduleNamedAfter>
                {
                    let call = ScheduleNamedAfter {
                        id,
                        after,
                        maybe_periodic,
                        priority,
                        call,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_scheduler::pallet::Event;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Scheduled(
                pub ::core::primitive::u32,
                pub ::core::primitive::u32,
            );
            impl ::subxt::Event for Scheduled {
                const PALLET: &'static str = "Scheduler";
                const EVENT: &'static str = "Scheduled";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Canceled(
                pub ::core::primitive::u32,
                pub ::core::primitive::u32,
            );
            impl ::subxt::Event for Canceled {
                const PALLET: &'static str = "Scheduler";
                const EVENT: &'static str = "Canceled";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Dispatched(
                pub (::core::primitive::u32, ::core::primitive::u32),
                pub  ::core::option::Option<
                    ::std::vec::Vec<::core::primitive::u8>,
                >,
                pub  ::core::result::Result<
                    (),
                    runtime_types::sp_runtime::DispatchError,
                >,
            );
            impl ::subxt::Event for Dispatched {
                const PALLET: &'static str = "Scheduler";
                const EVENT: &'static str = "Dispatched";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct Agenda(pub ::core::primitive::u32);
            impl ::subxt::StorageEntry for Agenda {
                const PALLET: &'static str = "Scheduler";
                const STORAGE: &'static str = "Agenda";
                type Value = ::std::vec::Vec<
                    ::core::option::Option<
                        runtime_types::pallet_scheduler::ScheduledV2<
                            runtime_types::subsocial_runtime::Call,
                            ::core::primitive::u32,
                            runtime_types::subsocial_runtime::OriginCaller,
                            ::subxt::sp_core::crypto::AccountId32,
                        >,
                    >,
                >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct Lookup(pub ::std::vec::Vec<::core::primitive::u8>);
            impl ::subxt::StorageEntry for Lookup {
                const PALLET: &'static str = "Scheduler";
                const STORAGE: &'static str = "Lookup";
                type Value = (::core::primitive::u32, ::core::primitive::u32);
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct StorageVersion;
            impl ::subxt::StorageEntry for StorageVersion {
                const PALLET: &'static str = "Scheduler";
                const STORAGE: &'static str = "StorageVersion";
                type Value = runtime_types::pallet_scheduler::Releases;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn agenda(
                    &self,
                    _0: ::core::primitive::u32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<
                        ::core::option::Option<
                            runtime_types::pallet_scheduler::ScheduledV2<
                                runtime_types::subsocial_runtime::Call,
                                ::core::primitive::u32,
                                runtime_types::subsocial_runtime::OriginCaller,
                                ::subxt::sp_core::crypto::AccountId32,
                            >,
                        >,
                    >,
                    ::subxt::Error,
                > {
                    let entry = Agenda(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn agenda_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, Agenda>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn lookup(
                    &self,
                    _0: ::std::vec::Vec<::core::primitive::u8>,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<(
                        ::core::primitive::u32,
                        ::core::primitive::u32,
                    )>,
                    ::subxt::Error,
                > {
                    let entry = Lookup(_0);
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn lookup_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, Lookup>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn storage_version(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    runtime_types::pallet_scheduler::Releases,
                    ::subxt::Error,
                > {
                    let entry = StorageVersion;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
            }
        }
    }
    pub mod utility {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Batch {
                pub calls:
                    ::std::vec::Vec<runtime_types::subsocial_runtime::Call>,
            }
            impl ::subxt::Call for Batch {
                const PALLET: &'static str = "Utility";
                const FUNCTION: &'static str = "batch";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct AsDerivative {
                pub index: ::core::primitive::u16,
                pub call: runtime_types::subsocial_runtime::Call,
            }
            impl ::subxt::Call for AsDerivative {
                const PALLET: &'static str = "Utility";
                const FUNCTION: &'static str = "as_derivative";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct BatchAll {
                pub calls:
                    ::std::vec::Vec<runtime_types::subsocial_runtime::Call>,
            }
            impl ::subxt::Call for BatchAll {
                const PALLET: &'static str = "Utility";
                const FUNCTION: &'static str = "batch_all";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn batch(
                    &self,
                    calls: ::std::vec::Vec<
                        runtime_types::subsocial_runtime::Call,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, Batch> {
                    let call = Batch { calls };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn as_derivative(
                    &self,
                    index: ::core::primitive::u16,
                    call: runtime_types::subsocial_runtime::Call,
                ) -> ::subxt::SubmittableExtrinsic<T, AsDerivative>
                {
                    let call = AsDerivative { index, call };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn batch_all(
                    &self,
                    calls: ::std::vec::Vec<
                        runtime_types::subsocial_runtime::Call,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, BatchAll>
                {
                    let call = BatchAll { calls };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_utility::pallet::Event;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct BatchInterrupted(
                pub ::core::primitive::u32,
                pub runtime_types::sp_runtime::DispatchError,
            );
            impl ::subxt::Event for BatchInterrupted {
                const PALLET: &'static str = "Utility";
                const EVENT: &'static str = "BatchInterrupted";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct BatchCompleted {}
            impl ::subxt::Event for BatchCompleted {
                const PALLET: &'static str = "Utility";
                const EVENT: &'static str = "BatchCompleted";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ItemCompleted {}
            impl ::subxt::Event for ItemCompleted {
                const PALLET: &'static str = "Utility";
                const EVENT: &'static str = "ItemCompleted";
            }
        }
    }
    pub mod permissions {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
            }
        }
    }
    pub mod posts {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct CreatePost {
                pub space_id_opt:
                    ::core::option::Option<::core::primitive::u64>,
                pub extension: runtime_types::pallet_posts::PostExtension,
                pub content: runtime_types::pallet_utils::Content,
            }
            impl ::subxt::Call for CreatePost {
                const PALLET: &'static str = "Posts";
                const FUNCTION: &'static str = "create_post";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct UpdatePost {
                pub post_id: ::core::primitive::u64,
                pub update: runtime_types::pallet_posts::PostUpdate,
            }
            impl ::subxt::Call for UpdatePost {
                const PALLET: &'static str = "Posts";
                const FUNCTION: &'static str = "update_post";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct MovePost {
                pub post_id: ::core::primitive::u64,
                pub new_space_id:
                    ::core::option::Option<::core::primitive::u64>,
            }
            impl ::subxt::Call for MovePost {
                const PALLET: &'static str = "Posts";
                const FUNCTION: &'static str = "move_post";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn create_post(
                    &self,
                    space_id_opt: ::core::option::Option<
                        ::core::primitive::u64,
                    >,
                    extension: runtime_types::pallet_posts::PostExtension,
                    content: runtime_types::pallet_utils::Content,
                ) -> ::subxt::SubmittableExtrinsic<T, CreatePost>
                {
                    let call = CreatePost {
                        space_id_opt,
                        extension,
                        content,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn update_post(
                    &self,
                    post_id: ::core::primitive::u64,
                    update: runtime_types::pallet_posts::PostUpdate,
                ) -> ::subxt::SubmittableExtrinsic<T, UpdatePost>
                {
                    let call = UpdatePost { post_id, update };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn move_post(
                    &self,
                    post_id: ::core::primitive::u64,
                    new_space_id: ::core::option::Option<
                        ::core::primitive::u64,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, MovePost>
                {
                    let call = MovePost {
                        post_id,
                        new_space_id,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_posts::RawEvent<
            ::subxt::sp_core::crypto::AccountId32,
        >;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct PostCreated(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for PostCreated {
                const PALLET: &'static str = "Posts";
                const EVENT: &'static str = "PostCreated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct PostUpdated(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for PostUpdated {
                const PALLET: &'static str = "Posts";
                const EVENT: &'static str = "PostUpdated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct PostDeleted(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for PostDeleted {
                const PALLET: &'static str = "Posts";
                const EVENT: &'static str = "PostDeleted";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct PostShared(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for PostShared {
                const PALLET: &'static str = "Posts";
                const EVENT: &'static str = "PostShared";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct PostMoved(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for PostMoved {
                const PALLET: &'static str = "Posts";
                const EVENT: &'static str = "PostMoved";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct NextPostId;
            impl ::subxt::StorageEntry for NextPostId {
                const PALLET: &'static str = "Posts";
                const STORAGE: &'static str = "NextPostId";
                type Value = ::core::primitive::u64;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct PostById(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for PostById {
                const PALLET: &'static str = "Posts";
                const STORAGE: &'static str = "PostById";
                type Value = runtime_types::pallet_posts::Post;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct ReplyIdsByPostId(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for ReplyIdsByPostId {
                const PALLET: &'static str = "Posts";
                const STORAGE: &'static str = "ReplyIdsByPostId";
                type Value = ::std::vec::Vec<::core::primitive::u64>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct PostIdsBySpaceId(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for PostIdsBySpaceId {
                const PALLET: &'static str = "Posts";
                const STORAGE: &'static str = "PostIdsBySpaceId";
                type Value = ::std::vec::Vec<::core::primitive::u64>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct SharedPostIdsByOriginalPostId(
                pub ::core::primitive::u64,
            );
            impl ::subxt::StorageEntry for SharedPostIdsByOriginalPostId {
                const PALLET: &'static str = "Posts";
                const STORAGE: &'static str = "SharedPostIdsByOriginalPostId";
                type Value = ::std::vec::Vec<::core::primitive::u64>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn next_post_id(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::u64,
                    ::subxt::Error,
                > {
                    let entry = NextPostId;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn post_by_id(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<runtime_types::pallet_posts::Post>,
                    ::subxt::Error,
                > {
                    let entry = PostById(_0);
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn post_by_id_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, PostById>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn reply_ids_by_post_id(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::core::primitive::u64>,
                    ::subxt::Error,
                > {
                    let entry = ReplyIdsByPostId(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn reply_ids_by_post_id_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, ReplyIdsByPostId>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn post_ids_by_space_id(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::core::primitive::u64>,
                    ::subxt::Error,
                > {
                    let entry = PostIdsBySpaceId(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn post_ids_by_space_id_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, PostIdsBySpaceId>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn shared_post_ids_by_original_post_id(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::core::primitive::u64>,
                    ::subxt::Error,
                > {
                    let entry = SharedPostIdsByOriginalPostId(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn shared_post_ids_by_original_post_id_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, SharedPostIdsByOriginalPostId>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod post_history {
        use super::runtime_types;
        pub mod storage {
            use super::runtime_types;
            pub struct EditHistory(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for EditHistory {
                const PALLET: &'static str = "PostHistory";
                const STORAGE: &'static str = "EditHistory";
                type Value = ::std::vec::Vec<
                    runtime_types::pallet_post_history::PostHistoryRecord,
                >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn edit_history(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<
                        runtime_types::pallet_post_history::PostHistoryRecord,
                    >,
                    ::subxt::Error,
                > {
                    let entry = EditHistory(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn edit_history_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, EditHistory>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod profile_follows {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct FollowAccount {
                pub account: ::subxt::sp_core::crypto::AccountId32,
            }
            impl ::subxt::Call for FollowAccount {
                const PALLET: &'static str = "ProfileFollows";
                const FUNCTION: &'static str = "follow_account";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct UnfollowAccount {
                pub account: ::subxt::sp_core::crypto::AccountId32,
            }
            impl ::subxt::Call for UnfollowAccount {
                const PALLET: &'static str = "ProfileFollows";
                const FUNCTION: &'static str = "unfollow_account";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn follow_account(
                    &self,
                    account: ::subxt::sp_core::crypto::AccountId32,
                ) -> ::subxt::SubmittableExtrinsic<T, FollowAccount>
                {
                    let call = FollowAccount { account };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn unfollow_account(
                    &self,
                    account: ::subxt::sp_core::crypto::AccountId32,
                ) -> ::subxt::SubmittableExtrinsic<T, UnfollowAccount>
                {
                    let call = UnfollowAccount { account };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_profile_follows::RawEvent<
            ::subxt::sp_core::crypto::AccountId32,
        >;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct AccountFollowed(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::Event for AccountFollowed {
                const PALLET: &'static str = "ProfileFollows";
                const EVENT: &'static str = "AccountFollowed";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct AccountUnfollowed(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::Event for AccountUnfollowed {
                const PALLET: &'static str = "ProfileFollows";
                const EVENT: &'static str = "AccountUnfollowed";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct AccountFollowers(
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::StorageEntry for AccountFollowers {
                const PALLET: &'static str = "ProfileFollows";
                const STORAGE: &'static str = "AccountFollowers";
                type Value =
                    ::std::vec::Vec<::subxt::sp_core::crypto::AccountId32>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct AccountFollowedByAccount(
                ::subxt::sp_core::crypto::AccountId32,
                ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::StorageEntry for AccountFollowedByAccount {
                const PALLET: &'static str = "ProfileFollows";
                const STORAGE: &'static str = "AccountFollowedByAccount";
                type Value = ::core::primitive::bool;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct AccountsFollowedByAccount(
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::StorageEntry for AccountsFollowedByAccount {
                const PALLET: &'static str = "ProfileFollows";
                const STORAGE: &'static str = "AccountsFollowedByAccount";
                type Value =
                    ::std::vec::Vec<::subxt::sp_core::crypto::AccountId32>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn account_followers(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::subxt::sp_core::crypto::AccountId32>,
                    ::subxt::Error,
                > {
                    let entry = AccountFollowers(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn account_followers_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, AccountFollowers>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn account_followed_by_account(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    _1: ::subxt::sp_core::crypto::AccountId32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::bool,
                    ::subxt::Error,
                > {
                    let entry = AccountFollowedByAccount(_0, _1);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn account_followed_by_account_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, AccountFollowedByAccount>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn accounts_followed_by_account(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::subxt::sp_core::crypto::AccountId32>,
                    ::subxt::Error,
                > {
                    let entry = AccountsFollowedByAccount(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn accounts_followed_by_account_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, AccountsFollowedByAccount>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod profiles {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct CreateProfile {
                pub content: runtime_types::pallet_utils::Content,
            }
            impl ::subxt::Call for CreateProfile {
                const PALLET: &'static str = "Profiles";
                const FUNCTION: &'static str = "create_profile";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct UpdateProfile {
                pub update: runtime_types::pallet_profiles::ProfileUpdate,
            }
            impl ::subxt::Call for UpdateProfile {
                const PALLET: &'static str = "Profiles";
                const FUNCTION: &'static str = "update_profile";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn create_profile(
                    &self,
                    content: runtime_types::pallet_utils::Content,
                ) -> ::subxt::SubmittableExtrinsic<T, CreateProfile>
                {
                    let call = CreateProfile { content };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn update_profile(
                    &self,
                    update: runtime_types::pallet_profiles::ProfileUpdate,
                ) -> ::subxt::SubmittableExtrinsic<T, UpdateProfile>
                {
                    let call = UpdateProfile { update };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_profiles::RawEvent<
            ::subxt::sp_core::crypto::AccountId32,
        >;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ProfileCreated(
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::Event for ProfileCreated {
                const PALLET: &'static str = "Profiles";
                const EVENT: &'static str = "ProfileCreated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ProfileUpdated(
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::Event for ProfileUpdated {
                const PALLET: &'static str = "Profiles";
                const EVENT: &'static str = "ProfileUpdated";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct SocialAccountById(
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::StorageEntry for SocialAccountById {
                const PALLET: &'static str = "Profiles";
                const STORAGE: &'static str = "SocialAccountById";
                type Value = runtime_types::pallet_profiles::SocialAccount;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn social_account_by_id(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<
                        runtime_types::pallet_profiles::SocialAccount,
                    >,
                    ::subxt::Error,
                > {
                    let entry = SocialAccountById(_0);
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn social_account_by_id_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, SocialAccountById>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod profile_history {
        use super::runtime_types;
        pub mod storage {
            use super::runtime_types;
            pub struct EditHistory(pub ::subxt::sp_core::crypto::AccountId32);
            impl ::subxt::StorageEntry for EditHistory {
                const PALLET: &'static str = "ProfileHistory";
                const STORAGE: &'static str = "EditHistory";
                type Value = ::std::vec::Vec<
                    runtime_types::pallet_profile_history::ProfileHistoryRecord,
                >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }                pub async fn edit_history (& self , _0 : :: subxt :: sp_core :: crypto :: AccountId32 , hash : :: core :: option :: Option < T :: Hash > ,) -> :: core :: result :: Result < :: std :: vec :: Vec < runtime_types :: pallet_profile_history :: ProfileHistoryRecord > , :: subxt :: Error >{
                    let entry = EditHistory(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn edit_history_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, EditHistory>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod reactions {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct CreatePostReaction {
                pub post_id: ::core::primitive::u64,
                pub kind: runtime_types::pallet_reactions::ReactionKind,
            }
            impl ::subxt::Call for CreatePostReaction {
                const PALLET: &'static str = "Reactions";
                const FUNCTION: &'static str = "create_post_reaction";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct UpdatePostReaction {
                pub post_id: ::core::primitive::u64,
                pub reaction_id: ::core::primitive::u64,
                pub new_kind: runtime_types::pallet_reactions::ReactionKind,
            }
            impl ::subxt::Call for UpdatePostReaction {
                const PALLET: &'static str = "Reactions";
                const FUNCTION: &'static str = "update_post_reaction";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct DeletePostReaction {
                pub post_id: ::core::primitive::u64,
                pub reaction_id: ::core::primitive::u64,
            }
            impl ::subxt::Call for DeletePostReaction {
                const PALLET: &'static str = "Reactions";
                const FUNCTION: &'static str = "delete_post_reaction";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn create_post_reaction(
                    &self,
                    post_id: ::core::primitive::u64,
                    kind: runtime_types::pallet_reactions::ReactionKind,
                ) -> ::subxt::SubmittableExtrinsic<T, CreatePostReaction>
                {
                    let call = CreatePostReaction { post_id, kind };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn update_post_reaction(
                    &self,
                    post_id: ::core::primitive::u64,
                    reaction_id: ::core::primitive::u64,
                    new_kind: runtime_types::pallet_reactions::ReactionKind,
                ) -> ::subxt::SubmittableExtrinsic<T, UpdatePostReaction>
                {
                    let call = UpdatePostReaction {
                        post_id,
                        reaction_id,
                        new_kind,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn delete_post_reaction(
                    &self,
                    post_id: ::core::primitive::u64,
                    reaction_id: ::core::primitive::u64,
                ) -> ::subxt::SubmittableExtrinsic<T, DeletePostReaction>
                {
                    let call = DeletePostReaction {
                        post_id,
                        reaction_id,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_reactions::RawEvent<
            ::subxt::sp_core::crypto::AccountId32,
        >;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct PostReactionCreated(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
                pub ::core::primitive::u64,
                pub runtime_types::pallet_reactions::ReactionKind,
            );
            impl ::subxt::Event for PostReactionCreated {
                const PALLET: &'static str = "Reactions";
                const EVENT: &'static str = "PostReactionCreated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct PostReactionUpdated(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
                pub ::core::primitive::u64,
                pub runtime_types::pallet_reactions::ReactionKind,
            );
            impl ::subxt::Event for PostReactionUpdated {
                const PALLET: &'static str = "Reactions";
                const EVENT: &'static str = "PostReactionUpdated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct PostReactionDeleted(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
                pub ::core::primitive::u64,
                pub runtime_types::pallet_reactions::ReactionKind,
            );
            impl ::subxt::Event for PostReactionDeleted {
                const PALLET: &'static str = "Reactions";
                const EVENT: &'static str = "PostReactionDeleted";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct NextReactionId;
            impl ::subxt::StorageEntry for NextReactionId {
                const PALLET: &'static str = "Reactions";
                const STORAGE: &'static str = "NextReactionId";
                type Value = ::core::primitive::u64;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct ReactionById(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for ReactionById {
                const PALLET: &'static str = "Reactions";
                const STORAGE: &'static str = "ReactionById";
                type Value = runtime_types::pallet_reactions::Reaction;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct ReactionIdsByPostId(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for ReactionIdsByPostId {
                const PALLET: &'static str = "Reactions";
                const STORAGE: &'static str = "ReactionIdsByPostId";
                type Value = ::std::vec::Vec<::core::primitive::u64>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct PostReactionIdByAccount(
                ::subxt::sp_core::crypto::AccountId32,
                ::core::primitive::u64,
            );
            impl ::subxt::StorageEntry for PostReactionIdByAccount {
                const PALLET: &'static str = "Reactions";
                const STORAGE: &'static str = "PostReactionIdByAccount";
                type Value = ::core::primitive::u64;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn next_reaction_id(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::u64,
                    ::subxt::Error,
                > {
                    let entry = NextReactionId;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn reaction_by_id(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<
                        runtime_types::pallet_reactions::Reaction,
                    >,
                    ::subxt::Error,
                > {
                    let entry = ReactionById(_0);
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn reaction_by_id_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, ReactionById>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn reaction_ids_by_post_id(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::core::primitive::u64>,
                    ::subxt::Error,
                > {
                    let entry = ReactionIdsByPostId(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn reaction_ids_by_post_id_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, ReactionIdsByPostId>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn post_reaction_id_by_account(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    _1: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::u64,
                    ::subxt::Error,
                > {
                    let entry = PostReactionIdByAccount(_0, _1);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn post_reaction_id_by_account_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, PostReactionIdByAccount>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod roles {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct CreateRole {
                pub space_id: ::core::primitive::u64,
                pub time_to_live:
                    ::core::option::Option<::core::primitive::u32>,
                pub content: runtime_types::pallet_utils::Content,
                pub permissions: ::std::vec::Vec<
                    runtime_types::pallet_permissions::SpacePermission,
                >,
            }
            impl ::subxt::Call for CreateRole {
                const PALLET: &'static str = "Roles";
                const FUNCTION: &'static str = "create_role";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct UpdateRole {
                pub role_id: ::core::primitive::u64,
                pub update: runtime_types::pallet_roles::RoleUpdate,
            }
            impl ::subxt::Call for UpdateRole {
                const PALLET: &'static str = "Roles";
                const FUNCTION: &'static str = "update_role";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct DeleteRole {
                pub role_id: ::core::primitive::u64,
            }
            impl ::subxt::Call for DeleteRole {
                const PALLET: &'static str = "Roles";
                const FUNCTION: &'static str = "delete_role";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct GrantRole {
                pub role_id: ::core::primitive::u64,
                pub users: ::std::vec::Vec<
                    runtime_types::pallet_utils::User<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                >,
            }
            impl ::subxt::Call for GrantRole {
                const PALLET: &'static str = "Roles";
                const FUNCTION: &'static str = "grant_role";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RevokeRole {
                pub role_id: ::core::primitive::u64,
                pub users: ::std::vec::Vec<
                    runtime_types::pallet_utils::User<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                >,
            }
            impl ::subxt::Call for RevokeRole {
                const PALLET: &'static str = "Roles";
                const FUNCTION: &'static str = "revoke_role";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn create_role(
                    &self,
                    space_id: ::core::primitive::u64,
                    time_to_live: ::core::option::Option<
                        ::core::primitive::u32,
                    >,
                    content: runtime_types::pallet_utils::Content,
                    permissions: ::std::vec::Vec<
                        runtime_types::pallet_permissions::SpacePermission,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, CreateRole>
                {
                    let call = CreateRole {
                        space_id,
                        time_to_live,
                        content,
                        permissions,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn update_role(
                    &self,
                    role_id: ::core::primitive::u64,
                    update: runtime_types::pallet_roles::RoleUpdate,
                ) -> ::subxt::SubmittableExtrinsic<T, UpdateRole>
                {
                    let call = UpdateRole { role_id, update };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn delete_role(
                    &self,
                    role_id: ::core::primitive::u64,
                ) -> ::subxt::SubmittableExtrinsic<T, DeleteRole>
                {
                    let call = DeleteRole { role_id };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn grant_role(
                    &self,
                    role_id: ::core::primitive::u64,
                    users: ::std::vec::Vec<
                        runtime_types::pallet_utils::User<
                            ::subxt::sp_core::crypto::AccountId32,
                        >,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, GrantRole>
                {
                    let call = GrantRole { role_id, users };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn revoke_role(
                    &self,
                    role_id: ::core::primitive::u64,
                    users: ::std::vec::Vec<
                        runtime_types::pallet_utils::User<
                            ::subxt::sp_core::crypto::AccountId32,
                        >,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, RevokeRole>
                {
                    let call = RevokeRole { role_id, users };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_roles::RawEvent<
            ::subxt::sp_core::crypto::AccountId32,
        >;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RoleCreated(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for RoleCreated {
                const PALLET: &'static str = "Roles";
                const EVENT: &'static str = "RoleCreated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RoleUpdated(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for RoleUpdated {
                const PALLET: &'static str = "Roles";
                const EVENT: &'static str = "RoleUpdated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RoleDeleted(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for RoleDeleted {
                const PALLET: &'static str = "Roles";
                const EVENT: &'static str = "RoleDeleted";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RoleGranted(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
                pub  ::std::vec::Vec<
                    runtime_types::pallet_utils::User<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                >,
            );
            impl ::subxt::Event for RoleGranted {
                const PALLET: &'static str = "Roles";
                const EVENT: &'static str = "RoleGranted";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RoleRevoked(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
                pub  ::std::vec::Vec<
                    runtime_types::pallet_utils::User<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                >,
            );
            impl ::subxt::Event for RoleRevoked {
                const PALLET: &'static str = "Roles";
                const EVENT: &'static str = "RoleRevoked";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct NextRoleId;
            impl ::subxt::StorageEntry for NextRoleId {
                const PALLET: &'static str = "Roles";
                const STORAGE: &'static str = "NextRoleId";
                type Value = ::core::primitive::u64;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct RoleById(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for RoleById {
                const PALLET: &'static str = "Roles";
                const STORAGE: &'static str = "RoleById";
                type Value = runtime_types::pallet_roles::Role;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct UsersByRoleId(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for UsersByRoleId {
                const PALLET: &'static str = "Roles";
                const STORAGE: &'static str = "UsersByRoleId";
                type Value = ::std::vec::Vec<
                    runtime_types::pallet_utils::User<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct RoleIdsBySpaceId(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for RoleIdsBySpaceId {
                const PALLET: &'static str = "Roles";
                const STORAGE: &'static str = "RoleIdsBySpaceId";
                type Value = ::std::vec::Vec<::core::primitive::u64>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct RoleIdsByUserInSpace(
                runtime_types::pallet_utils::User<
                    ::subxt::sp_core::crypto::AccountId32,
                >,
                ::core::primitive::u64,
            );
            impl ::subxt::StorageEntry for RoleIdsByUserInSpace {
                const PALLET: &'static str = "Roles";
                const STORAGE: &'static str = "RoleIdsByUserInSpace";
                type Value = ::std::vec::Vec<::core::primitive::u64>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                        ::subxt::StorageMapKey::new(
                            &self.1,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn next_role_id(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::u64,
                    ::subxt::Error,
                > {
                    let entry = NextRoleId;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn role_by_id(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<runtime_types::pallet_roles::Role>,
                    ::subxt::Error,
                > {
                    let entry = RoleById(_0);
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn role_by_id_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, RoleById>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn users_by_role_id(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<
                        runtime_types::pallet_utils::User<
                            ::subxt::sp_core::crypto::AccountId32,
                        >,
                    >,
                    ::subxt::Error,
                > {
                    let entry = UsersByRoleId(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn users_by_role_id_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, UsersByRoleId>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn role_ids_by_space_id(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::core::primitive::u64>,
                    ::subxt::Error,
                > {
                    let entry = RoleIdsBySpaceId(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn role_ids_by_space_id_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, RoleIdsBySpaceId>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn role_ids_by_user_in_space(
                    &self,
                    _0: runtime_types::pallet_utils::User<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                    _1: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::core::primitive::u64>,
                    ::subxt::Error,
                > {
                    let entry = RoleIdsByUserInSpace(_0, _1);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn role_ids_by_user_in_space_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, RoleIdsByUserInSpace>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod space_follows {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct FollowSpace {
                pub space_id: ::core::primitive::u64,
            }
            impl ::subxt::Call for FollowSpace {
                const PALLET: &'static str = "SpaceFollows";
                const FUNCTION: &'static str = "follow_space";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct UnfollowSpace {
                pub space_id: ::core::primitive::u64,
            }
            impl ::subxt::Call for UnfollowSpace {
                const PALLET: &'static str = "SpaceFollows";
                const FUNCTION: &'static str = "unfollow_space";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn follow_space(
                    &self,
                    space_id: ::core::primitive::u64,
                ) -> ::subxt::SubmittableExtrinsic<T, FollowSpace>
                {
                    let call = FollowSpace { space_id };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn unfollow_space(
                    &self,
                    space_id: ::core::primitive::u64,
                ) -> ::subxt::SubmittableExtrinsic<T, UnfollowSpace>
                {
                    let call = UnfollowSpace { space_id };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_space_follows::RawEvent<
            ::subxt::sp_core::crypto::AccountId32,
        >;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SpaceFollowed(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for SpaceFollowed {
                const PALLET: &'static str = "SpaceFollows";
                const EVENT: &'static str = "SpaceFollowed";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SpaceUnfollowed(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for SpaceUnfollowed {
                const PALLET: &'static str = "SpaceFollows";
                const EVENT: &'static str = "SpaceUnfollowed";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct SpaceFollowers(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for SpaceFollowers {
                const PALLET: &'static str = "SpaceFollows";
                const STORAGE: &'static str = "SpaceFollowers";
                type Value =
                    ::std::vec::Vec<::subxt::sp_core::crypto::AccountId32>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct SpaceFollowedByAccount(
                ::subxt::sp_core::crypto::AccountId32,
                ::core::primitive::u64,
            );
            impl ::subxt::StorageEntry for SpaceFollowedByAccount {
                const PALLET: &'static str = "SpaceFollows";
                const STORAGE: &'static str = "SpaceFollowedByAccount";
                type Value = ::core::primitive::bool;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct SpacesFollowedByAccount(
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::StorageEntry for SpacesFollowedByAccount {
                const PALLET: &'static str = "SpaceFollows";
                const STORAGE: &'static str = "SpacesFollowedByAccount";
                type Value = ::std::vec::Vec<::core::primitive::u64>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn space_followers(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::subxt::sp_core::crypto::AccountId32>,
                    ::subxt::Error,
                > {
                    let entry = SpaceFollowers(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn space_followers_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, SpaceFollowers>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn space_followed_by_account(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    _1: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::bool,
                    ::subxt::Error,
                > {
                    let entry = SpaceFollowedByAccount(_0, _1);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn space_followed_by_account_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, SpaceFollowedByAccount>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn spaces_followed_by_account(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::core::primitive::u64>,
                    ::subxt::Error,
                > {
                    let entry = SpacesFollowedByAccount(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn spaces_followed_by_account_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, SpacesFollowedByAccount>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod space_history {
        use super::runtime_types;
        pub mod storage {
            use super::runtime_types;
            pub struct EditHistory(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for EditHistory {
                const PALLET: &'static str = "SpaceHistory";
                const STORAGE: &'static str = "EditHistory";
                type Value = ::std::vec::Vec<
                    runtime_types::pallet_space_history::SpaceHistoryRecord,
                >;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn edit_history(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<
                        runtime_types::pallet_space_history::SpaceHistoryRecord,
                    >,
                    ::subxt::Error,
                > {
                    let entry = EditHistory(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn edit_history_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, EditHistory>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod space_ownership {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct TransferSpaceOwnership {
                pub space_id: ::core::primitive::u64,
                pub transfer_to: ::subxt::sp_core::crypto::AccountId32,
            }
            impl ::subxt::Call for TransferSpaceOwnership {
                const PALLET: &'static str = "SpaceOwnership";
                const FUNCTION: &'static str = "transfer_space_ownership";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct AcceptPendingOwnership {
                pub space_id: ::core::primitive::u64,
            }
            impl ::subxt::Call for AcceptPendingOwnership {
                const PALLET: &'static str = "SpaceOwnership";
                const FUNCTION: &'static str = "accept_pending_ownership";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RejectPendingOwnership {
                pub space_id: ::core::primitive::u64,
            }
            impl ::subxt::Call for RejectPendingOwnership {
                const PALLET: &'static str = "SpaceOwnership";
                const FUNCTION: &'static str = "reject_pending_ownership";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn transfer_space_ownership(
                    &self,
                    space_id: ::core::primitive::u64,
                    transfer_to: ::subxt::sp_core::crypto::AccountId32,
                ) -> ::subxt::SubmittableExtrinsic<T, TransferSpaceOwnership>
                {
                    let call = TransferSpaceOwnership {
                        space_id,
                        transfer_to,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn accept_pending_ownership(
                    &self,
                    space_id: ::core::primitive::u64,
                ) -> ::subxt::SubmittableExtrinsic<T, AcceptPendingOwnership>
                {
                    let call = AcceptPendingOwnership { space_id };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn reject_pending_ownership(
                    &self,
                    space_id: ::core::primitive::u64,
                ) -> ::subxt::SubmittableExtrinsic<T, RejectPendingOwnership>
                {
                    let call = RejectPendingOwnership { space_id };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_space_ownership::RawEvent<
            ::subxt::sp_core::crypto::AccountId32,
        >;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SpaceOwnershipTransferCreated(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::Event for SpaceOwnershipTransferCreated {
                const PALLET: &'static str = "SpaceOwnership";
                const EVENT: &'static str = "SpaceOwnershipTransferCreated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SpaceOwnershipTransferAccepted(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for SpaceOwnershipTransferAccepted {
                const PALLET: &'static str = "SpaceOwnership";
                const EVENT: &'static str = "SpaceOwnershipTransferAccepted";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SpaceOwnershipTransferRejected(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for SpaceOwnershipTransferRejected {
                const PALLET: &'static str = "SpaceOwnership";
                const EVENT: &'static str = "SpaceOwnershipTransferRejected";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct PendingSpaceOwner(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for PendingSpaceOwner {
                const PALLET: &'static str = "SpaceOwnership";
                const STORAGE: &'static str = "PendingSpaceOwner";
                type Value = ::subxt::sp_core::crypto::AccountId32;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn pending_space_owner(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                    ::subxt::Error,
                > {
                    let entry = PendingSpaceOwner(_0);
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn pending_space_owner_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, PendingSpaceOwner>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod spaces {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct CreateSpace {
                pub parent_id_opt:
                    ::core::option::Option<::core::primitive::u64>,
                pub handle_opt: ::core::option::Option<
                    ::std::vec::Vec<::core::primitive::u8>,
                >,
                pub content: runtime_types::pallet_utils::Content,
                pub permissions_opt: ::core::option::Option<
                    runtime_types::pallet_permissions::SpacePermissions,
                >,
            }
            impl ::subxt::Call for CreateSpace {
                const PALLET: &'static str = "Spaces";
                const FUNCTION: &'static str = "create_space";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct UpdateSpace {
                pub space_id: ::core::primitive::u64,
                pub update: runtime_types::pallet_spaces::SpaceUpdate,
            }
            impl ::subxt::Call for UpdateSpace {
                const PALLET: &'static str = "Spaces";
                const FUNCTION: &'static str = "update_space";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct UpdateSettings {
                pub new_settings: runtime_types::pallet_spaces::SpacesSettings,
            }
            impl ::subxt::Call for UpdateSettings {
                const PALLET: &'static str = "Spaces";
                const FUNCTION: &'static str = "update_settings";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ForceUnreserveHandle {
                pub handle: ::std::vec::Vec<::core::primitive::u8>,
            }
            impl ::subxt::Call for ForceUnreserveHandle {
                const PALLET: &'static str = "Spaces";
                const FUNCTION: &'static str = "force_unreserve_handle";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn create_space(
                    &self,
                    parent_id_opt: ::core::option::Option<
                        ::core::primitive::u64,
                    >,
                    handle_opt: ::core::option::Option<
                        ::std::vec::Vec<::core::primitive::u8>,
                    >,
                    content: runtime_types::pallet_utils::Content,
                    permissions_opt: ::core::option::Option<
                        runtime_types::pallet_permissions::SpacePermissions,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, CreateSpace>
                {
                    let call = CreateSpace {
                        parent_id_opt,
                        handle_opt,
                        content,
                        permissions_opt,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn update_space(
                    &self,
                    space_id: ::core::primitive::u64,
                    update: runtime_types::pallet_spaces::SpaceUpdate,
                ) -> ::subxt::SubmittableExtrinsic<T, UpdateSpace>
                {
                    let call = UpdateSpace { space_id, update };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn update_settings(
                    &self,
                    new_settings: runtime_types::pallet_spaces::SpacesSettings,
                ) -> ::subxt::SubmittableExtrinsic<T, UpdateSettings>
                {
                    let call = UpdateSettings { new_settings };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn force_unreserve_handle(
                    &self,
                    handle: ::std::vec::Vec<::core::primitive::u8>,
                ) -> ::subxt::SubmittableExtrinsic<T, ForceUnreserveHandle>
                {
                    let call = ForceUnreserveHandle { handle };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_spaces::RawEvent<
            ::subxt::sp_core::crypto::AccountId32,
        >;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SpaceCreated(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for SpaceCreated {
                const PALLET: &'static str = "Spaces";
                const EVENT: &'static str = "SpaceCreated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SpaceUpdated(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for SpaceUpdated {
                const PALLET: &'static str = "Spaces";
                const EVENT: &'static str = "SpaceUpdated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SpaceDeleted(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u64,
            );
            impl ::subxt::Event for SpaceDeleted {
                const PALLET: &'static str = "Spaces";
                const EVENT: &'static str = "SpaceDeleted";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct NextSpaceId;
            impl ::subxt::StorageEntry for NextSpaceId {
                const PALLET: &'static str = "Spaces";
                const STORAGE: &'static str = "NextSpaceId";
                type Value = ::core::primitive::u64;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct SpaceById(pub ::core::primitive::u64);
            impl ::subxt::StorageEntry for SpaceById {
                const PALLET: &'static str = "Spaces";
                const STORAGE: &'static str = "SpaceById";
                type Value = runtime_types::pallet_spaces::Space;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct SpaceIdByHandle(
                pub ::std::vec::Vec<::core::primitive::u8>,
            );
            impl ::subxt::StorageEntry for SpaceIdByHandle {
                const PALLET: &'static str = "Spaces";
                const STORAGE: &'static str = "SpaceIdByHandle";
                type Value = ::core::primitive::u64;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct SpaceIdsByOwner(
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::StorageEntry for SpaceIdsByOwner {
                const PALLET: &'static str = "Spaces";
                const STORAGE: &'static str = "SpaceIdsByOwner";
                type Value = ::std::vec::Vec<::core::primitive::u64>;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct PalletSettings;
            impl ::subxt::StorageEntry for PalletSettings {
                const PALLET: &'static str = "Spaces";
                const STORAGE: &'static str = "PalletSettings";
                type Value = runtime_types::pallet_spaces::SpacesSettings;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct SpaceIdByHandleStorageFixed;
            impl ::subxt::StorageEntry for SpaceIdByHandleStorageFixed {
                const PALLET: &'static str = "Spaces";
                const STORAGE: &'static str = "SpaceIdByHandleStorageFixed";
                type Value = ::core::primitive::bool;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn next_space_id(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::u64,
                    ::subxt::Error,
                > {
                    let entry = NextSpaceId;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn space_by_id(
                    &self,
                    _0: ::core::primitive::u64,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<runtime_types::pallet_spaces::Space>,
                    ::subxt::Error,
                > {
                    let entry = SpaceById(_0);
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn space_by_id_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, SpaceById>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn space_id_by_handle(
                    &self,
                    _0: ::std::vec::Vec<::core::primitive::u8>,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<::core::primitive::u64>,
                    ::subxt::Error,
                > {
                    let entry = SpaceIdByHandle(_0);
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn space_id_by_handle_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, SpaceIdByHandle>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn space_ids_by_owner(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::std::vec::Vec<::core::primitive::u64>,
                    ::subxt::Error,
                > {
                    let entry = SpaceIdsByOwner(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn space_ids_by_owner_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, SpaceIdsByOwner>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn pallet_settings(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    runtime_types::pallet_spaces::SpacesSettings,
                    ::subxt::Error,
                > {
                    let entry = PalletSettings;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn space_id_by_handle_storage_fixed(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::bool,
                    ::subxt::Error,
                > {
                    let entry = SpaceIdByHandleStorageFixed;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
            }
        }
    }
    pub mod utils {
        use super::runtime_types;
        pub type Event =
            runtime_types::pallet_utils::RawEvent<::core::primitive::u128>;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Deposit(pub ::core::primitive::u128);
            impl ::subxt::Event for Deposit {
                const PALLET: &'static str = "Utils";
                const EVENT: &'static str = "Deposit";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct TreasuryAccount;
            impl ::subxt::StorageEntry for TreasuryAccount {
                const PALLET: &'static str = "Utils";
                const STORAGE: &'static str = "TreasuryAccount";
                type Value = ::subxt::sp_core::crypto::AccountId32;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn treasury_account(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::sp_core::crypto::AccountId32,
                    ::subxt::Error,
                > {
                    let entry = TreasuryAccount;
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
            }
        }
    }
    pub mod faucets {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct AddFaucet {
                pub faucet: ::subxt::sp_core::crypto::AccountId32,
                pub period: ::core::primitive::u32,
                pub period_limit: ::core::primitive::u128,
                pub drip_limit: ::core::primitive::u128,
            }
            impl ::subxt::Call for AddFaucet {
                const PALLET: &'static str = "Faucets";
                const FUNCTION: &'static str = "add_faucet";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct UpdateFaucet {
                pub faucet: ::subxt::sp_core::crypto::AccountId32,
                pub update: runtime_types::pallet_faucets::FaucetUpdate<
                    ::core::primitive::u32,
                    ::core::primitive::u128,
                >,
            }
            impl ::subxt::Call for UpdateFaucet {
                const PALLET: &'static str = "Faucets";
                const FUNCTION: &'static str = "update_faucet";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RemoveFaucets {
                pub faucets:
                    ::std::vec::Vec<::subxt::sp_core::crypto::AccountId32>,
            }
            impl ::subxt::Call for RemoveFaucets {
                const PALLET: &'static str = "Faucets";
                const FUNCTION: &'static str = "remove_faucets";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Drip {
                pub recipient: ::subxt::sp_core::crypto::AccountId32,
                pub amount: ::core::primitive::u128,
            }
            impl ::subxt::Call for Drip {
                const PALLET: &'static str = "Faucets";
                const FUNCTION: &'static str = "drip";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn add_faucet(
                    &self,
                    faucet: ::subxt::sp_core::crypto::AccountId32,
                    period: ::core::primitive::u32,
                    period_limit: ::core::primitive::u128,
                    drip_limit: ::core::primitive::u128,
                ) -> ::subxt::SubmittableExtrinsic<T, AddFaucet>
                {
                    let call = AddFaucet {
                        faucet,
                        period,
                        period_limit,
                        drip_limit,
                    };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn update_faucet(
                    &self,
                    faucet: ::subxt::sp_core::crypto::AccountId32,
                    update: runtime_types::pallet_faucets::FaucetUpdate<
                        ::core::primitive::u32,
                        ::core::primitive::u128,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, UpdateFaucet>
                {
                    let call = UpdateFaucet { faucet, update };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn remove_faucets(
                    &self,
                    faucets: ::std::vec::Vec<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, RemoveFaucets>
                {
                    let call = RemoveFaucets { faucets };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn drip(
                    &self,
                    recipient: ::subxt::sp_core::crypto::AccountId32,
                    amount: ::core::primitive::u128,
                ) -> ::subxt::SubmittableExtrinsic<T, Drip> {
                    let call = Drip { recipient, amount };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_faucets::RawEvent<
            ::subxt::sp_core::crypto::AccountId32,
            ::core::primitive::u128,
        >;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct FaucetAdded(pub ::subxt::sp_core::crypto::AccountId32);
            impl ::subxt::Event for FaucetAdded {
                const PALLET: &'static str = "Faucets";
                const EVENT: &'static str = "FaucetAdded";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct FaucetUpdated(pub ::subxt::sp_core::crypto::AccountId32);
            impl ::subxt::Event for FaucetUpdated {
                const PALLET: &'static str = "Faucets";
                const EVENT: &'static str = "FaucetUpdated";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct FaucetsRemoved(
                pub ::std::vec::Vec<::subxt::sp_core::crypto::AccountId32>,
            );
            impl ::subxt::Event for FaucetsRemoved {
                const PALLET: &'static str = "Faucets";
                const EVENT: &'static str = "FaucetsRemoved";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Dripped(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u128,
            );
            impl ::subxt::Event for Dripped {
                const PALLET: &'static str = "Faucets";
                const EVENT: &'static str = "Dripped";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct FaucetByAccount(
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::StorageEntry for FaucetByAccount {
                const PALLET: &'static str = "Faucets";
                const STORAGE: &'static str = "FaucetByAccount";
                type Value = runtime_types::pallet_faucets::Faucet;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Twox64Concat,
                        ),
                    ])
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn faucet_by_account(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<
                        runtime_types::pallet_faucets::Faucet,
                    >,
                    ::subxt::Error,
                > {
                    let entry = FaucetByAccount(_0);
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn faucet_by_account_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, FaucetByAccount>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
            }
        }
    }
    pub mod dotsama_claims {
        use super::runtime_types;
        pub mod calls {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ClaimTokens {}
            impl ::subxt::Call for ClaimTokens {
                const PALLET: &'static str = "DotsamaClaims";
                const FUNCTION: &'static str = "claim_tokens";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SetRewardsSender {
                pub rewards_sender_opt: ::core::option::Option<
                    ::subxt::sp_core::crypto::AccountId32,
                >,
            }
            impl ::subxt::Call for SetRewardsSender {
                const PALLET: &'static str = "DotsamaClaims";
                const FUNCTION: &'static str = "set_rewards_sender";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct AddEligibleAccounts {
                pub eligible_accounts:
                    ::std::vec::Vec<::subxt::sp_core::crypto::AccountId32>,
            }
            impl ::subxt::Call for AddEligibleAccounts {
                const PALLET: &'static str = "DotsamaClaims";
                const FUNCTION: &'static str = "add_eligible_accounts";
            }
            pub struct TransactionApi<
                'a,
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            > {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> TransactionApi<'a, T>
            where
                T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
            {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub fn claim_tokens(
                    &self,
                ) -> ::subxt::SubmittableExtrinsic<T, ClaimTokens>
                {
                    let call = ClaimTokens {};
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn set_rewards_sender(
                    &self,
                    rewards_sender_opt: ::core::option::Option<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, SetRewardsSender>
                {
                    let call = SetRewardsSender { rewards_sender_opt };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
                pub fn add_eligible_accounts(
                    &self,
                    eligible_accounts: ::std::vec::Vec<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ) -> ::subxt::SubmittableExtrinsic<T, AddEligibleAccounts>
                {
                    let call = AddEligibleAccounts { eligible_accounts };
                    ::subxt::SubmittableExtrinsic::new(self.client, call)
                }
            }
        }
        pub type Event = runtime_types::pallet_dotsama_claims::pallet::Event;
        pub mod events {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RewardsSenderSet(
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::Event for RewardsSenderSet {
                const PALLET: &'static str = "DotsamaClaims";
                const EVENT: &'static str = "RewardsSenderSet";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RewardsSenderRemoved {}
            impl ::subxt::Event for RewardsSenderRemoved {
                const PALLET: &'static str = "DotsamaClaims";
                const EVENT: &'static str = "RewardsSenderRemoved";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct EligibleAccountsAdded(pub ::core::primitive::u16);
            impl ::subxt::Event for EligibleAccountsAdded {
                const PALLET: &'static str = "DotsamaClaims";
                const EVENT: &'static str = "EligibleAccountsAdded";
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct TokensClaimed(
                pub ::subxt::sp_core::crypto::AccountId32,
                pub ::core::primitive::u128,
            );
            impl ::subxt::Event for TokensClaimed {
                const PALLET: &'static str = "DotsamaClaims";
                const EVENT: &'static str = "TokensClaimed";
            }
        }
        pub mod storage {
            use super::runtime_types;
            pub struct RewardsSender;
            impl ::subxt::StorageEntry for RewardsSender {
                const PALLET: &'static str = "DotsamaClaims";
                const STORAGE: &'static str = "RewardsSender";
                type Value = ::subxt::sp_core::crypto::AccountId32;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct EligibleAccounts(
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::StorageEntry for EligibleAccounts {
                const PALLET: &'static str = "DotsamaClaims";
                const STORAGE: &'static str = "EligibleAccounts";
                type Value = ::core::primitive::bool;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct TokensClaimedByAccount(
                pub ::subxt::sp_core::crypto::AccountId32,
            );
            impl ::subxt::StorageEntry for TokensClaimedByAccount {
                const PALLET: &'static str = "DotsamaClaims";
                const STORAGE: &'static str = "TokensClaimedByAccount";
                type Value = ::core::primitive::u128;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Map(vec![
                        ::subxt::StorageMapKey::new(
                            &self.0,
                            ::subxt::StorageHasher::Blake2_128Concat,
                        ),
                    ])
                }
            }
            pub struct TotalTokensClaimed;
            impl ::subxt::StorageEntry for TotalTokensClaimed {
                const PALLET: &'static str = "DotsamaClaims";
                const STORAGE: &'static str = "TotalTokensClaimed";
                type Value = ::core::primitive::u128;
                fn key(&self) -> ::subxt::StorageEntryKey {
                    ::subxt::StorageEntryKey::Plain
                }
            }
            pub struct StorageApi<'a, T: ::subxt::Config> {
                client: &'a ::subxt::Client<T>,
            }
            impl<'a, T: ::subxt::Config> StorageApi<'a, T> {
                pub fn new(client: &'a ::subxt::Client<T>) -> Self {
                    Self { client }
                }
                pub async fn rewards_sender(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                    ::subxt::Error,
                > {
                    let entry = RewardsSender;
                    self.client.storage().fetch(&entry, hash).await
                }
                pub async fn eligible_accounts(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::bool,
                    ::subxt::Error,
                > {
                    let entry = EligibleAccounts(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn eligible_accounts_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, EligibleAccounts>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn tokens_claimed_by_account(
                    &self,
                    _0: ::subxt::sp_core::crypto::AccountId32,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::primitive::u128,
                    ::subxt::Error,
                > {
                    let entry = TokensClaimedByAccount(_0);
                    self.client.storage().fetch_or_default(&entry, hash).await
                }
                pub async fn tokens_claimed_by_account_iter(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::subxt::KeyIter<'a, T, TokensClaimedByAccount>,
                    ::subxt::Error,
                > {
                    self.client.storage().iter(hash).await
                }
                pub async fn total_tokens_claimed(
                    &self,
                    hash: ::core::option::Option<T::Hash>,
                ) -> ::core::result::Result<
                    ::core::option::Option<::core::primitive::u128>,
                    ::subxt::Error,
                > {
                    let entry = TotalTokensClaimed;
                    self.client.storage().fetch(&entry, hash).await
                }
            }
        }
    }
    pub mod runtime_types {
        use super::runtime_types;
        pub mod finality_grandpa {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Equivocation<_0, _1, _2> {
                pub round_number: ::core::primitive::u64,
                pub identity: _0,
                pub first: (_1, _2),
                pub second: (_1, _2),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Precommit<_0, _1> {
                pub target_hash: _0,
                pub target_number: _1,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Prevote<_0, _1> {
                pub target_hash: _0,
                pub target_number: _1,
            }
        }
        pub mod frame_support {
            use super::runtime_types;
            pub mod storage {
                use super::runtime_types;
                pub mod bounded_vec {
                    use super::runtime_types;
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub struct BoundedVec<_0>(pub ::std::vec::Vec<_0>);
                }
                pub mod weak_bounded_vec {
                    use super::runtime_types;
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub struct WeakBoundedVec<_0>(pub ::std::vec::Vec<_0>);
                }
            }
            pub mod traits {
                use super::runtime_types;
                pub mod tokens {
                    use super::runtime_types;
                    pub mod misc {
                        use super::runtime_types;
                        #[derive(
                            :: subxt :: codec :: Encode,
                            :: subxt :: codec :: Decode,
                        )]
                        pub enum BalanceStatus {
                            #[codec(index = 0)]
                            Free,
                            #[codec(index = 1)]
                            Reserved,
                        }
                    }
                }
            }
            pub mod weights {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum DispatchClass {
                    #[codec(index = 0)]
                    Normal,
                    #[codec(index = 1)]
                    Operational,
                    #[codec(index = 2)]
                    Mandatory,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct DispatchInfo {
                    pub weight: ::core::primitive::u64,
                    pub class:
                        runtime_types::frame_support::weights::DispatchClass,
                    pub pays_fee: runtime_types::frame_support::weights::Pays,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Pays {
                    #[codec(index = 0)]
                    Yes,
                    #[codec(index = 1)]
                    No,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct PerDispatchClass<_0> {
                    pub normal: _0,
                    pub operational: _0,
                    pub mandatory: _0,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct RuntimeDbWeight {
                    pub read: ::core::primitive::u64,
                    pub write: ::core::primitive::u64,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct WeightToFeeCoefficient<_0> {
                    pub coeff_integer: _0,
                    pub coeff_frac:
                        runtime_types::sp_arithmetic::per_things::Perbill,
                    pub negative: ::core::primitive::bool,
                    pub degree: ::core::primitive::u8,
                }
            }
        }
        pub mod frame_system {
            use super::runtime_types;
            pub mod extensions {
                use super::runtime_types;
                pub mod check_genesis {
                    use super::runtime_types;
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub struct CheckGenesis {}
                }
                pub mod check_mortality {
                    use super::runtime_types;
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub struct CheckMortality(
                        pub runtime_types::sp_runtime::generic::era::Era,
                    );
                }
                pub mod check_nonce {
                    use super::runtime_types;
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub struct CheckNonce(
                        #[codec(compact)] pub ::core::primitive::u32,
                    );
                }
                pub mod check_spec_version {
                    use super::runtime_types;
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub struct CheckSpecVersion {}
                }
                pub mod check_tx_version {
                    use super::runtime_types;
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub struct CheckTxVersion {}
                }
                pub mod check_weight {
                    use super::runtime_types;
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub struct CheckWeight {}
                }
            }
            pub mod limits {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct BlockLength {
                    pub max:
                        runtime_types::frame_support::weights::PerDispatchClass<
                            ::core::primitive::u32,
                        >,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct BlockWeights { pub base_block : :: core :: primitive :: u64 , pub max_block : :: core :: primitive :: u64 , pub per_class : runtime_types :: frame_support :: weights :: PerDispatchClass < runtime_types :: frame_system :: limits :: WeightsPerClass > , }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct WeightsPerClass {
                    pub base_extrinsic: ::core::primitive::u64,
                    pub max_extrinsic:
                        ::core::option::Option<::core::primitive::u64>,
                    pub max_total:
                        ::core::option::Option<::core::primitive::u64>,
                    pub reserved:
                        ::core::option::Option<::core::primitive::u64>,
                }
            }
            pub mod pallet {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Call {
                    # [codec (index = 0)] fill_block { ratio : runtime_types :: sp_arithmetic :: per_things :: Perbill , } , # [codec (index = 1)] remark { remark : :: std :: vec :: Vec < :: core :: primitive :: u8 > , } , # [codec (index = 2)] set_heap_pages { pages : :: core :: primitive :: u64 , } , # [codec (index = 3)] set_code { code : :: std :: vec :: Vec < :: core :: primitive :: u8 > , } , # [codec (index = 4)] set_code_without_checks { code : :: std :: vec :: Vec < :: core :: primitive :: u8 > , } , # [codec (index = 5)] set_changes_trie_config { changes_trie_config : :: core :: option :: Option < runtime_types :: sp_core :: changes_trie :: ChangesTrieConfiguration > , } , # [codec (index = 6)] set_storage { items : :: std :: vec :: Vec < (:: std :: vec :: Vec < :: core :: primitive :: u8 > , :: std :: vec :: Vec < :: core :: primitive :: u8 > ,) > , } , # [codec (index = 7)] kill_storage { keys : :: std :: vec :: Vec < :: std :: vec :: Vec < :: core :: primitive :: u8 > > , } , # [codec (index = 8)] kill_prefix { prefix : :: std :: vec :: Vec < :: core :: primitive :: u8 > , subkeys : :: core :: primitive :: u32 , } , # [codec (index = 9)] remark_with_event { remark : :: std :: vec :: Vec < :: core :: primitive :: u8 > , } , }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Error {
                    #[codec(index = 0)]
                    InvalidSpecName,
                    #[codec(index = 1)]
                    SpecVersionNeedsToIncrease,
                    #[codec(index = 2)]
                    FailedToExtractRuntimeVersion,
                    #[codec(index = 3)]
                    NonDefaultComposite,
                    #[codec(index = 4)]
                    NonZeroRefCount,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Event {
                    #[codec(index = 0)]
                    ExtrinsicSuccess(
                        runtime_types::frame_support::weights::DispatchInfo,
                    ),
                    #[codec(index = 1)]
                    ExtrinsicFailed(
                        runtime_types::sp_runtime::DispatchError,
                        runtime_types::frame_support::weights::DispatchInfo,
                    ),
                    #[codec(index = 2)]
                    CodeUpdated,
                    #[codec(index = 3)]
                    NewAccount(::subxt::sp_core::crypto::AccountId32),
                    #[codec(index = 4)]
                    KilledAccount(::subxt::sp_core::crypto::AccountId32),
                    #[codec(index = 5)]
                    Remarked(
                        ::subxt::sp_core::crypto::AccountId32,
                        ::subxt::sp_core::H256,
                    ),
                }
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct AccountInfo<_0, _1> {
                pub nonce: _0,
                pub consumers: _0,
                pub providers: _0,
                pub sufficients: _0,
                pub data: _1,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct EventRecord<_0, _1> {
                pub phase: runtime_types::frame_system::Phase,
                pub event: _0,
                pub topics: ::std::vec::Vec<_1>,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct LastRuntimeUpgradeInfo {
                #[codec(compact)]
                pub spec_version: ::core::primitive::u32,
                pub spec_name: ::std::string::String,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Phase {
                #[codec(index = 0)]
                ApplyExtrinsic(::core::primitive::u32),
                #[codec(index = 1)]
                Finalization,
                #[codec(index = 2)]
                Initialization,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum RawOrigin<_0> {
                #[codec(index = 0)]
                Root,
                #[codec(index = 1)]
                Signed(_0),
                #[codec(index = 2)]
                None,
            }
        }
        pub mod pallet_balances {
            use super::runtime_types;
            pub mod pallet {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Call {
                    #[codec(index = 0)]
                    transfer {
                        dest: ::subxt::sp_runtime::MultiAddress<
                            ::subxt::sp_core::crypto::AccountId32,
                            (),
                        >,
                        #[codec(compact)]
                        value: ::core::primitive::u128,
                    },
                    #[codec(index = 1)]
                    set_balance {
                        who: ::subxt::sp_runtime::MultiAddress<
                            ::subxt::sp_core::crypto::AccountId32,
                            (),
                        >,
                        #[codec(compact)]
                        new_free: ::core::primitive::u128,
                        #[codec(compact)]
                        new_reserved: ::core::primitive::u128,
                    },
                    #[codec(index = 2)]
                    force_transfer {
                        source: ::subxt::sp_runtime::MultiAddress<
                            ::subxt::sp_core::crypto::AccountId32,
                            (),
                        >,
                        dest: ::subxt::sp_runtime::MultiAddress<
                            ::subxt::sp_core::crypto::AccountId32,
                            (),
                        >,
                        #[codec(compact)]
                        value: ::core::primitive::u128,
                    },
                    #[codec(index = 3)]
                    transfer_keep_alive {
                        dest: ::subxt::sp_runtime::MultiAddress<
                            ::subxt::sp_core::crypto::AccountId32,
                            (),
                        >,
                        #[codec(compact)]
                        value: ::core::primitive::u128,
                    },
                    #[codec(index = 4)]
                    transfer_all {
                        dest: ::subxt::sp_runtime::MultiAddress<
                            ::subxt::sp_core::crypto::AccountId32,
                            (),
                        >,
                        keep_alive: ::core::primitive::bool,
                    },
                    #[codec(index = 5)]
                    force_unreserve {
                        who: ::subxt::sp_runtime::MultiAddress<
                            ::subxt::sp_core::crypto::AccountId32,
                            (),
                        >,
                        amount: ::core::primitive::u128,
                    },
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Error {
                    #[codec(index = 0)]
                    VestingBalance,
                    #[codec(index = 1)]
                    LiquidityRestrictions,
                    #[codec(index = 2)]
                    InsufficientBalance,
                    #[codec(index = 3)]
                    ExistentialDeposit,
                    #[codec(index = 4)]
                    KeepAlive,
                    #[codec(index = 5)]
                    ExistingVestingSchedule,
                    #[codec(index = 6)]
                    DeadAccount,
                    #[codec(index = 7)]
                    TooManyReserves,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Event {
                    # [codec (index = 0)] Endowed (:: subxt :: sp_core :: crypto :: AccountId32 , :: core :: primitive :: u128 ,) , # [codec (index = 1)] DustLost (:: subxt :: sp_core :: crypto :: AccountId32 , :: core :: primitive :: u128 ,) , # [codec (index = 2)] Transfer (:: subxt :: sp_core :: crypto :: AccountId32 , :: subxt :: sp_core :: crypto :: AccountId32 , :: core :: primitive :: u128 ,) , # [codec (index = 3)] BalanceSet (:: subxt :: sp_core :: crypto :: AccountId32 , :: core :: primitive :: u128 , :: core :: primitive :: u128 ,) , # [codec (index = 4)] Reserved (:: subxt :: sp_core :: crypto :: AccountId32 , :: core :: primitive :: u128 ,) , # [codec (index = 5)] Unreserved (:: subxt :: sp_core :: crypto :: AccountId32 , :: core :: primitive :: u128 ,) , # [codec (index = 6)] ReserveRepatriated (:: subxt :: sp_core :: crypto :: AccountId32 , :: subxt :: sp_core :: crypto :: AccountId32 , :: core :: primitive :: u128 , runtime_types :: frame_support :: traits :: tokens :: misc :: BalanceStatus ,) , # [codec (index = 7)] Deposit (:: subxt :: sp_core :: crypto :: AccountId32 , :: core :: primitive :: u128 ,) , # [codec (index = 8)] Withdraw (:: subxt :: sp_core :: crypto :: AccountId32 , :: core :: primitive :: u128 ,) , # [codec (index = 9)] Slashed (:: subxt :: sp_core :: crypto :: AccountId32 , :: core :: primitive :: u128 ,) , }
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct AccountData<_0> {
                pub free: _0,
                pub reserved: _0,
                pub misc_frozen: _0,
                pub fee_frozen: _0,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct BalanceLock<_0> {
                pub id: [::core::primitive::u8; 8usize],
                pub amount: _0,
                pub reasons: runtime_types::pallet_balances::Reasons,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Reasons {
                #[codec(index = 0)]
                Fee,
                #[codec(index = 1)]
                Misc,
                #[codec(index = 2)]
                All,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Releases {
                #[codec(index = 0)]
                V1_0_0,
                #[codec(index = 1)]
                V2_0_0,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ReserveData<_0, _1> {
                pub id: _0,
                pub amount: _1,
            }
        }
        pub mod pallet_dotsama_claims {
            use super::runtime_types;
            pub mod pallet {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Call {
                    #[codec(index = 0)]
                    claim_tokens,
                    #[codec(index = 1)]
                    set_rewards_sender {
                        rewards_sender_opt: ::core::option::Option<
                            ::subxt::sp_core::crypto::AccountId32,
                        >,
                    },
                    #[codec(index = 2)]
                    add_eligible_accounts {
                        eligible_accounts: ::std::vec::Vec<
                            ::subxt::sp_core::crypto::AccountId32,
                        >,
                    },
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Error {
                    #[codec(index = 0)]
                    NoRewardsSenderSet,
                    #[codec(index = 1)]
                    RewardsSenderHasInsufficientBalance,
                    #[codec(index = 2)]
                    AddingTooManyAccountsAtOnce,
                    #[codec(index = 3)]
                    AccountNotEligible,
                    #[codec(index = 4)]
                    TokensAlreadyClaimed,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Event {
                    #[codec(index = 0)]
                    RewardsSenderSet(::subxt::sp_core::crypto::AccountId32),
                    #[codec(index = 1)]
                    RewardsSenderRemoved,
                    #[codec(index = 2)]
                    EligibleAccountsAdded(::core::primitive::u16),
                    #[codec(index = 3)]
                    TokensClaimed(
                        ::subxt::sp_core::crypto::AccountId32,
                        ::core::primitive::u128,
                    ),
                }
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct EnsureAllowedToClaimTokens {}
        }
        pub mod pallet_faucets {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Call {
                #[codec(index = 0)]
                add_faucet {
                    faucet: ::subxt::sp_core::crypto::AccountId32,
                    period: ::core::primitive::u32,
                    period_limit: ::core::primitive::u128,
                    drip_limit: ::core::primitive::u128,
                },
                #[codec(index = 1)]
                update_faucet {
                    faucet: ::subxt::sp_core::crypto::AccountId32,
                    update: runtime_types::pallet_faucets::FaucetUpdate<
                        ::core::primitive::u32,
                        ::core::primitive::u128,
                    >,
                },
                #[codec(index = 2)]
                remove_faucets {
                    faucets:
                        ::std::vec::Vec<::subxt::sp_core::crypto::AccountId32>,
                },
                #[codec(index = 3)]
                drip {
                    recipient: ::subxt::sp_core::crypto::AccountId32,
                    amount: ::core::primitive::u128,
                },
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Error {
                #[codec(index = 0)]
                FaucetNotFound,
                #[codec(index = 1)]
                FaucetAlreadyAdded,
                #[codec(index = 2)]
                NoFreeBalanceOnFaucet,
                #[codec(index = 3)]
                NotEnoughFreeBalanceOnFaucet,
                #[codec(index = 4)]
                NoFaucetsProvided,
                #[codec(index = 5)]
                NoUpdatesProvided,
                #[codec(index = 6)]
                NothingToUpdate,
                #[codec(index = 7)]
                FaucetDisabled,
                #[codec(index = 8)]
                NotFaucetOwner,
                #[codec(index = 9)]
                RecipientEqualsFaucet,
                #[codec(index = 10)]
                DripLimitCannotExceedPeriodLimit,
                #[codec(index = 11)]
                ZeroPeriodProvided,
                #[codec(index = 12)]
                ZeroPeriodLimitProvided,
                #[codec(index = 13)]
                ZeroDripLimitProvided,
                #[codec(index = 14)]
                ZeroDripAmountProvided,
                #[codec(index = 15)]
                PeriodLimitReached,
                #[codec(index = 16)]
                DripLimitReached,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Faucet {
                pub enabled: ::core::primitive::bool,
                pub period: ::core::primitive::u32,
                pub period_limit: ::core::primitive::u128,
                pub drip_limit: ::core::primitive::u128,
                pub next_period_at: ::core::primitive::u32,
                pub dripped_in_current_period: ::core::primitive::u128,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct FaucetUpdate<_0, _1> {
                pub enabled: ::core::option::Option<::core::primitive::bool>,
                pub period: ::core::option::Option<_0>,
                pub period_limit: ::core::option::Option<_1>,
                pub drip_limit: ::core::option::Option<_1>,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum RawEvent<_0, _1> {
                #[codec(index = 0)]
                FaucetAdded(_0),
                #[codec(index = 1)]
                FaucetUpdated(_0),
                #[codec(index = 2)]
                FaucetsRemoved(::std::vec::Vec<_0>),
                #[codec(index = 3)]
                Dripped(_0, _0, _1),
            }
        }
        pub mod pallet_grandpa {
            use super::runtime_types;
            pub mod pallet {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Call {
                    # [codec (index = 0)] report_equivocation { equivocation_proof : :: std :: boxed :: Box < runtime_types :: sp_finality_grandpa :: EquivocationProof < :: subxt :: sp_core :: H256 , :: core :: primitive :: u32 > > , key_owner_proof : runtime_types :: sp_core :: Void , } , # [codec (index = 1)] report_equivocation_unsigned { equivocation_proof : :: std :: boxed :: Box < runtime_types :: sp_finality_grandpa :: EquivocationProof < :: subxt :: sp_core :: H256 , :: core :: primitive :: u32 > > , key_owner_proof : runtime_types :: sp_core :: Void , } , # [codec (index = 2)] note_stalled { delay : :: core :: primitive :: u32 , best_finalized_block_number : :: core :: primitive :: u32 , } , }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Error {
                    #[codec(index = 0)]
                    PauseFailed,
                    #[codec(index = 1)]
                    ResumeFailed,
                    #[codec(index = 2)]
                    ChangePending,
                    #[codec(index = 3)]
                    TooSoon,
                    #[codec(index = 4)]
                    InvalidKeyOwnershipProof,
                    #[codec(index = 5)]
                    InvalidEquivocationProof,
                    #[codec(index = 6)]
                    DuplicateOffenceReport,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Event {
                    #[codec(index = 0)]
                    NewAuthorities(
                        ::std::vec::Vec<(
                            runtime_types::sp_finality_grandpa::app::Public,
                            ::core::primitive::u64,
                        )>,
                    ),
                    #[codec(index = 1)]
                    Paused,
                    #[codec(index = 2)]
                    Resumed,
                }
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct StoredPendingChange < _0 > { pub scheduled_at : _0 , pub delay : _0 , pub next_authorities : runtime_types :: frame_support :: storage :: weak_bounded_vec :: WeakBoundedVec < (runtime_types :: sp_finality_grandpa :: app :: Public , :: core :: primitive :: u64 ,) > , pub forced : :: core :: option :: Option < _0 > , }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum StoredState<_0> {
                #[codec(index = 0)]
                Live,
                #[codec(index = 1)]
                PendingPause { scheduled_at: _0, delay: _0 },
                #[codec(index = 2)]
                Paused,
                #[codec(index = 3)]
                PendingResume { scheduled_at: _0, delay: _0 },
            }
        }
        pub mod pallet_permissions {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Call {}
            #[derive(
                :: subxt :: codec :: Encode,
                :: subxt :: codec :: Decode,
                PartialEq,
                Eq,
                PartialOrd,
                Ord,
            )]
            pub enum SpacePermission {
                #[codec(index = 0)]
                ManageRoles,
                #[codec(index = 1)]
                RepresentSpaceInternally,
                #[codec(index = 2)]
                RepresentSpaceExternally,
                #[codec(index = 3)]
                UpdateSpace,
                #[codec(index = 4)]
                CreateSubspaces,
                #[codec(index = 5)]
                UpdateOwnSubspaces,
                #[codec(index = 6)]
                DeleteOwnSubspaces,
                #[codec(index = 7)]
                HideOwnSubspaces,
                #[codec(index = 8)]
                UpdateAnySubspace,
                #[codec(index = 9)]
                DeleteAnySubspace,
                #[codec(index = 10)]
                HideAnySubspace,
                #[codec(index = 11)]
                CreatePosts,
                #[codec(index = 12)]
                UpdateOwnPosts,
                #[codec(index = 13)]
                DeleteOwnPosts,
                #[codec(index = 14)]
                HideOwnPosts,
                #[codec(index = 15)]
                UpdateAnyPost,
                #[codec(index = 16)]
                DeleteAnyPost,
                #[codec(index = 17)]
                HideAnyPost,
                #[codec(index = 18)]
                CreateComments,
                #[codec(index = 19)]
                UpdateOwnComments,
                #[codec(index = 20)]
                DeleteOwnComments,
                #[codec(index = 21)]
                HideOwnComments,
                #[codec(index = 22)]
                HideAnyComment,
                #[codec(index = 23)]
                Upvote,
                #[codec(index = 24)]
                Downvote,
                #[codec(index = 25)]
                Share,
                #[codec(index = 26)]
                OverrideSubspacePermissions,
                #[codec(index = 27)]
                OverridePostPermissions,
                #[codec(index = 28)]
                SuggestEntityStatus,
                #[codec(index = 29)]
                UpdateEntityStatus,
                #[codec(index = 30)]
                UpdateSpaceSettings,
            }
            #[derive(
                :: subxt :: codec :: Encode,
                :: subxt :: codec :: Decode,
                PartialEq,
                Eq,
                PartialOrd,
                Ord,
            )]
            pub struct SpacePermissions {
                pub none: ::core::option::Option<
                    ::std::collections::BTreeSet<
                        runtime_types::pallet_permissions::SpacePermission,
                    >,
                >,
                pub everyone: ::core::option::Option<
                    ::std::collections::BTreeSet<
                        runtime_types::pallet_permissions::SpacePermission,
                    >,
                >,
                pub follower: ::core::option::Option<
                    ::std::collections::BTreeSet<
                        runtime_types::pallet_permissions::SpacePermission,
                    >,
                >,
                pub space_owner: ::core::option::Option<
                    ::std::collections::BTreeSet<
                        runtime_types::pallet_permissions::SpacePermission,
                    >,
                >,
            }
        }
        pub mod pallet_post_history {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct PostHistoryRecord {
                pub edited: runtime_types::pallet_utils::WhoAndWhen,
                pub old_data: runtime_types::pallet_posts::PostUpdate,
            }
        }
        pub mod pallet_posts {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Call {
                #[codec(index = 0)]
                create_post {
                    space_id_opt:
                        ::core::option::Option<::core::primitive::u64>,
                    extension: runtime_types::pallet_posts::PostExtension,
                    content: runtime_types::pallet_utils::Content,
                },
                #[codec(index = 1)]
                update_post {
                    post_id: ::core::primitive::u64,
                    update: runtime_types::pallet_posts::PostUpdate,
                },
                #[codec(index = 2)]
                move_post {
                    post_id: ::core::primitive::u64,
                    new_space_id:
                        ::core::option::Option<::core::primitive::u64>,
                },
            }
            #[derive(
                :: subxt :: codec :: Encode,
                :: subxt :: codec :: Decode,
                PartialEq,
                Eq,
                PartialOrd,
                Ord,
            )]
            pub struct Comment {
                pub parent_id: ::core::option::Option<::core::primitive::u64>,
                pub root_post_id: ::core::primitive::u64,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Error {
                #[codec(index = 0)]
                PostNotFound,
                #[codec(index = 1)]
                NotAPostOwner,
                #[codec(index = 2)]
                NoUpdatesForPost,
                #[codec(index = 3)]
                PostHasNoSpaceId,
                #[codec(index = 4)]
                CannotCreateInHiddenScope,
                #[codec(index = 5)]
                NoRepliesOnPost,
                #[codec(index = 6)]
                CannotMoveToSameSpace,
                #[codec(index = 7)]
                OriginalPostNotFound,
                #[codec(index = 8)]
                CannotShareSharingPost,
                #[codec(index = 9)]
                NotASharingPost,
                #[codec(index = 10)]
                UnknownParentComment,
                #[codec(index = 11)]
                NotACommentByParentId,
                #[codec(index = 12)]
                CannotUpdateSpaceIdOnComment,
                #[codec(index = 13)]
                MaxCommentDepthReached,
                #[codec(index = 14)]
                NotACommentAuthor,
                #[codec(index = 15)]
                NotComment,
                #[codec(index = 16)]
                NoPermissionToCreatePosts,
                #[codec(index = 17)]
                NoPermissionToCreateComments,
                #[codec(index = 18)]
                NoPermissionToShare,
                #[codec(index = 19)]
                NoPermissionToUpdateAnyPost,
                #[codec(index = 20)]
                NoPermissionToUpdateOwnPosts,
                #[codec(index = 21)]
                NoPermissionToUpdateOwnComments,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Post {
                pub id: ::core::primitive::u64,
                pub created: runtime_types::pallet_utils::WhoAndWhen,
                pub updated: ::core::option::Option<
                    runtime_types::pallet_utils::WhoAndWhen,
                >,
                pub owner: ::subxt::sp_core::crypto::AccountId32,
                pub extension: runtime_types::pallet_posts::PostExtension,
                pub space_id: ::core::option::Option<::core::primitive::u64>,
                pub content: runtime_types::pallet_utils::Content,
                pub hidden: ::core::primitive::bool,
                pub replies_count: ::core::primitive::u16,
                pub hidden_replies_count: ::core::primitive::u16,
                pub shares_count: ::core::primitive::u16,
                pub upvotes_count: ::core::primitive::u16,
                pub downvotes_count: ::core::primitive::u16,
                pub score: ::core::primitive::i32,
            }
            #[derive(
                :: subxt :: codec :: Encode,
                :: subxt :: codec :: Decode,
                PartialEq,
                Eq,
                PartialOrd,
                Ord,
            )]
            pub enum PostExtension {
                #[codec(index = 0)]
                RegularPost,
                #[codec(index = 1)]
                Comment(runtime_types::pallet_posts::Comment),
                #[codec(index = 2)]
                SharedPost(::core::primitive::u64),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct PostUpdate {
                pub space_id: ::core::option::Option<::core::primitive::u64>,
                pub content: ::core::option::Option<
                    runtime_types::pallet_utils::Content,
                >,
                pub hidden: ::core::option::Option<::core::primitive::bool>,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum RawEvent<_0> {
                #[codec(index = 0)]
                PostCreated(_0, ::core::primitive::u64),
                #[codec(index = 1)]
                PostUpdated(_0, ::core::primitive::u64),
                #[codec(index = 2)]
                PostDeleted(_0, ::core::primitive::u64),
                #[codec(index = 3)]
                PostShared(_0, ::core::primitive::u64),
                #[codec(index = 4)]
                PostMoved(_0, ::core::primitive::u64),
            }
        }
        pub mod pallet_profile_follows {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Call {
                #[codec(index = 0)]
                follow_account {
                    account: ::subxt::sp_core::crypto::AccountId32,
                },
                #[codec(index = 1)]
                unfollow_account {
                    account: ::subxt::sp_core::crypto::AccountId32,
                },
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Error {
                #[codec(index = 0)]
                FollowerAccountNotFound,
                #[codec(index = 1)]
                FollowedAccountNotFound,
                #[codec(index = 2)]
                AccountCannotFollowItself,
                #[codec(index = 3)]
                AccountCannotUnfollowItself,
                #[codec(index = 4)]
                AlreadyAccountFollower,
                #[codec(index = 5)]
                NotAccountFollower,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum RawEvent<_0> {
                #[codec(index = 0)]
                AccountFollowed(_0, _0),
                #[codec(index = 1)]
                AccountUnfollowed(_0, _0),
            }
        }
        pub mod pallet_profile_history {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ProfileHistoryRecord {
                pub edited: runtime_types::pallet_utils::WhoAndWhen,
                pub old_data: runtime_types::pallet_profiles::ProfileUpdate,
            }
        }
        pub mod pallet_profiles {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Call {
                #[codec(index = 0)]
                create_profile {
                    content: runtime_types::pallet_utils::Content,
                },
                #[codec(index = 1)]
                update_profile {
                    update: runtime_types::pallet_profiles::ProfileUpdate,
                },
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Error {
                #[codec(index = 0)]
                SocialAccountNotFound,
                #[codec(index = 1)]
                ProfileAlreadyCreated,
                #[codec(index = 2)]
                NoUpdatesForProfile,
                #[codec(index = 3)]
                AccountHasNoProfile,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Profile {
                pub created: runtime_types::pallet_utils::WhoAndWhen,
                pub updated: ::core::option::Option<
                    runtime_types::pallet_utils::WhoAndWhen,
                >,
                pub content: runtime_types::pallet_utils::Content,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ProfileUpdate {
                pub content: ::core::option::Option<
                    runtime_types::pallet_utils::Content,
                >,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum RawEvent<_0> {
                #[codec(index = 0)]
                ProfileCreated(_0),
                #[codec(index = 1)]
                ProfileUpdated(_0),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SocialAccount {
                pub followers_count: ::core::primitive::u32,
                pub following_accounts_count: ::core::primitive::u16,
                pub following_spaces_count: ::core::primitive::u16,
                pub reputation: ::core::primitive::u32,
                pub profile: ::core::option::Option<
                    runtime_types::pallet_profiles::Profile,
                >,
            }
        }
        pub mod pallet_reactions {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Call {
                #[codec(index = 0)]
                create_post_reaction {
                    post_id: ::core::primitive::u64,
                    kind: runtime_types::pallet_reactions::ReactionKind,
                },
                #[codec(index = 1)]
                update_post_reaction {
                    post_id: ::core::primitive::u64,
                    reaction_id: ::core::primitive::u64,
                    new_kind: runtime_types::pallet_reactions::ReactionKind,
                },
                #[codec(index = 2)]
                delete_post_reaction {
                    post_id: ::core::primitive::u64,
                    reaction_id: ::core::primitive::u64,
                },
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Error {
                #[codec(index = 0)]
                ReactionNotFound,
                #[codec(index = 1)]
                AccountAlreadyReacted,
                #[codec(index = 2)]
                ReactionByAccountNotFound,
                #[codec(index = 3)]
                NotReactionOwner,
                #[codec(index = 4)]
                SameReaction,
                #[codec(index = 5)]
                CannotReactWhenSpaceHidden,
                #[codec(index = 6)]
                CannotReactWhenPostHidden,
                #[codec(index = 7)]
                NoPermissionToUpvote,
                #[codec(index = 8)]
                NoPermissionToDownvote,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum RawEvent<_0> {
                #[codec(index = 0)]
                PostReactionCreated(
                    _0,
                    ::core::primitive::u64,
                    ::core::primitive::u64,
                    runtime_types::pallet_reactions::ReactionKind,
                ),
                #[codec(index = 1)]
                PostReactionUpdated(
                    _0,
                    ::core::primitive::u64,
                    ::core::primitive::u64,
                    runtime_types::pallet_reactions::ReactionKind,
                ),
                #[codec(index = 2)]
                PostReactionDeleted(
                    _0,
                    ::core::primitive::u64,
                    ::core::primitive::u64,
                    runtime_types::pallet_reactions::ReactionKind,
                ),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Reaction {
                pub id: ::core::primitive::u64,
                pub created: runtime_types::pallet_utils::WhoAndWhen,
                pub updated: ::core::option::Option<
                    runtime_types::pallet_utils::WhoAndWhen,
                >,
                pub kind: runtime_types::pallet_reactions::ReactionKind,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum ReactionKind {
                #[codec(index = 0)]
                Upvote,
                #[codec(index = 1)]
                Downvote,
            }
        }
        pub mod pallet_roles {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Call {
                #[codec(index = 0)]
                create_role {
                    space_id: ::core::primitive::u64,
                    time_to_live:
                        ::core::option::Option<::core::primitive::u32>,
                    content: runtime_types::pallet_utils::Content,
                    permissions: ::std::vec::Vec<
                        runtime_types::pallet_permissions::SpacePermission,
                    >,
                },
                #[codec(index = 1)]
                update_role {
                    role_id: ::core::primitive::u64,
                    update: runtime_types::pallet_roles::RoleUpdate,
                },
                #[codec(index = 2)]
                delete_role { role_id: ::core::primitive::u64 },
                #[codec(index = 3)]
                grant_role {
                    role_id: ::core::primitive::u64,
                    users: ::std::vec::Vec<
                        runtime_types::pallet_utils::User<
                            ::subxt::sp_core::crypto::AccountId32,
                        >,
                    >,
                },
                #[codec(index = 4)]
                revoke_role {
                    role_id: ::core::primitive::u64,
                    users: ::std::vec::Vec<
                        runtime_types::pallet_utils::User<
                            ::subxt::sp_core::crypto::AccountId32,
                        >,
                    >,
                },
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Error {
                #[codec(index = 0)]
                RoleNotFound,
                #[codec(index = 1)]
                RoleIdOverflow,
                #[codec(index = 2)]
                NoPermissionToManageRoles,
                #[codec(index = 3)]
                NoUpdatesProvided,
                #[codec(index = 4)]
                NoPermissionsProvided,
                #[codec(index = 5)]
                NoUsersProvided,
                #[codec(index = 6)]
                TooManyUsersToDeleteRole,
                #[codec(index = 7)]
                RoleAlreadyDisabled,
                #[codec(index = 8)]
                RoleAlreadyEnabled,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum RawEvent<_0> {
                #[codec(index = 0)]
                RoleCreated(_0, ::core::primitive::u64, ::core::primitive::u64),
                #[codec(index = 1)]
                RoleUpdated(_0, ::core::primitive::u64),
                #[codec(index = 2)]
                RoleDeleted(_0, ::core::primitive::u64),
                #[codec(index = 3)]
                RoleGranted(
                    _0,
                    ::core::primitive::u64,
                    ::std::vec::Vec<runtime_types::pallet_utils::User<_0>>,
                ),
                #[codec(index = 4)]
                RoleRevoked(
                    _0,
                    ::core::primitive::u64,
                    ::std::vec::Vec<runtime_types::pallet_utils::User<_0>>,
                ),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Role {
                pub created: runtime_types::pallet_utils::WhoAndWhen,
                pub updated: ::core::option::Option<
                    runtime_types::pallet_utils::WhoAndWhen,
                >,
                pub id: ::core::primitive::u64,
                pub space_id: ::core::primitive::u64,
                pub disabled: ::core::primitive::bool,
                pub expires_at: ::core::option::Option<::core::primitive::u32>,
                pub content: runtime_types::pallet_utils::Content,
                pub permissions: ::std::collections::BTreeSet<
                    runtime_types::pallet_permissions::SpacePermission,
                >,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RoleUpdate {
                pub disabled: ::core::option::Option<::core::primitive::bool>,
                pub content: ::core::option::Option<
                    runtime_types::pallet_utils::Content,
                >,
                pub permissions: ::core::option::Option<
                    ::std::collections::BTreeSet<
                        runtime_types::pallet_permissions::SpacePermission,
                    >,
                >,
            }
        }
        pub mod pallet_scheduler {
            use super::runtime_types;
            pub mod pallet {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Call {
                    #[codec(index = 0)]
                    schedule {
                        when: ::core::primitive::u32,
                        maybe_periodic: ::core::option::Option<(
                            ::core::primitive::u32,
                            ::core::primitive::u32,
                        )>,
                        priority: ::core::primitive::u8,
                        call: ::std::boxed::Box<
                            runtime_types::subsocial_runtime::Call,
                        >,
                    },
                    #[codec(index = 1)]
                    cancel {
                        when: ::core::primitive::u32,
                        index: ::core::primitive::u32,
                    },
                    #[codec(index = 2)]
                    schedule_named {
                        id: ::std::vec::Vec<::core::primitive::u8>,
                        when: ::core::primitive::u32,
                        maybe_periodic: ::core::option::Option<(
                            ::core::primitive::u32,
                            ::core::primitive::u32,
                        )>,
                        priority: ::core::primitive::u8,
                        call: ::std::boxed::Box<
                            runtime_types::subsocial_runtime::Call,
                        >,
                    },
                    #[codec(index = 3)]
                    cancel_named {
                        id: ::std::vec::Vec<::core::primitive::u8>,
                    },
                    #[codec(index = 4)]
                    schedule_after {
                        after: ::core::primitive::u32,
                        maybe_periodic: ::core::option::Option<(
                            ::core::primitive::u32,
                            ::core::primitive::u32,
                        )>,
                        priority: ::core::primitive::u8,
                        call: ::std::boxed::Box<
                            runtime_types::subsocial_runtime::Call,
                        >,
                    },
                    #[codec(index = 5)]
                    schedule_named_after {
                        id: ::std::vec::Vec<::core::primitive::u8>,
                        after: ::core::primitive::u32,
                        maybe_periodic: ::core::option::Option<(
                            ::core::primitive::u32,
                            ::core::primitive::u32,
                        )>,
                        priority: ::core::primitive::u8,
                        call: ::std::boxed::Box<
                            runtime_types::subsocial_runtime::Call,
                        >,
                    },
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Error {
                    #[codec(index = 0)]
                    FailedToSchedule,
                    #[codec(index = 1)]
                    NotFound,
                    #[codec(index = 2)]
                    TargetBlockNumberInPast,
                    #[codec(index = 3)]
                    RescheduleNoChange,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Event {
                    #[codec(index = 0)]
                    Scheduled(::core::primitive::u32, ::core::primitive::u32),
                    #[codec(index = 1)]
                    Canceled(::core::primitive::u32, ::core::primitive::u32),
                    #[codec(index = 2)]
                    Dispatched(
                        (::core::primitive::u32, ::core::primitive::u32),
                        ::core::option::Option<
                            ::std::vec::Vec<::core::primitive::u8>,
                        >,
                        ::core::result::Result<
                            (),
                            runtime_types::sp_runtime::DispatchError,
                        >,
                    ),
                }
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Releases {
                #[codec(index = 0)]
                V1,
                #[codec(index = 1)]
                V2,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ScheduledV2<_0, _1, _2, _3> {
                pub maybe_id: ::core::option::Option<
                    ::std::vec::Vec<::core::primitive::u8>,
                >,
                pub priority: ::core::primitive::u8,
                pub call: _0,
                pub maybe_periodic: ::core::option::Option<(_1, _1)>,
                pub origin: _2,
                #[codec(skip)]
                pub __subxt_unused_type_params: ::core::marker::PhantomData<_3>,
            }
        }
        pub mod pallet_space_follows {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Call {
                #[codec(index = 0)]
                follow_space { space_id: ::core::primitive::u64 },
                #[codec(index = 1)]
                unfollow_space { space_id: ::core::primitive::u64 },
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Error {
                #[codec(index = 0)]
                SocialAccountNotFound,
                #[codec(index = 1)]
                AlreadySpaceFollower,
                #[codec(index = 2)]
                NotSpaceFollower,
                #[codec(index = 3)]
                CannotFollowHiddenSpace,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum RawEvent<_0> {
                #[codec(index = 0)]
                SpaceFollowed(_0, ::core::primitive::u64),
                #[codec(index = 1)]
                SpaceUnfollowed(_0, ::core::primitive::u64),
            }
        }
        pub mod pallet_space_history {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SpaceHistoryRecord {
                pub edited: runtime_types::pallet_utils::WhoAndWhen,
                pub old_data: runtime_types::pallet_spaces::SpaceUpdate,
            }
        }
        pub mod pallet_space_ownership {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Call {
                #[codec(index = 0)]
                transfer_space_ownership {
                    space_id: ::core::primitive::u64,
                    transfer_to: ::subxt::sp_core::crypto::AccountId32,
                },
                #[codec(index = 1)]
                accept_pending_ownership { space_id: ::core::primitive::u64 },
                #[codec(index = 2)]
                reject_pending_ownership { space_id: ::core::primitive::u64 },
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Error {
                #[codec(index = 0)]
                CannotTranferToCurrentOwner,
                #[codec(index = 1)]
                AlreadyASpaceOwner,
                #[codec(index = 2)]
                NoPendingTransferOnSpace,
                #[codec(index = 3)]
                NotAllowedToAcceptOwnershipTransfer,
                #[codec(index = 4)]
                NotAllowedToRejectOwnershipTransfer,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum RawEvent<_0> {
                #[codec(index = 0)]
                SpaceOwnershipTransferCreated(_0, ::core::primitive::u64, _0),
                #[codec(index = 1)]
                SpaceOwnershipTransferAccepted(_0, ::core::primitive::u64),
                #[codec(index = 2)]
                SpaceOwnershipTransferRejected(_0, ::core::primitive::u64),
            }
        }
        pub mod pallet_spaces {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Call {
                #[codec(index = 0)]
                create_space {
                    parent_id_opt:
                        ::core::option::Option<::core::primitive::u64>,
                    handle_opt: ::core::option::Option<
                        ::std::vec::Vec<::core::primitive::u8>,
                    >,
                    content: runtime_types::pallet_utils::Content,
                    permissions_opt: ::core::option::Option<
                        runtime_types::pallet_permissions::SpacePermissions,
                    >,
                },
                #[codec(index = 1)]
                update_space {
                    space_id: ::core::primitive::u64,
                    update: runtime_types::pallet_spaces::SpaceUpdate,
                },
                #[codec(index = 2)]
                update_settings {
                    new_settings: runtime_types::pallet_spaces::SpacesSettings,
                },
                #[codec(index = 3)]
                force_unreserve_handle {
                    handle: ::std::vec::Vec<::core::primitive::u8>,
                },
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Error {
                #[codec(index = 0)]
                SpaceNotFound,
                #[codec(index = 1)]
                SpaceHandleIsNotUnique,
                #[codec(index = 2)]
                HandlesAreDisabled,
                #[codec(index = 3)]
                NoUpdatesForSpace,
                #[codec(index = 4)]
                NotASpaceOwner,
                #[codec(index = 5)]
                NoPermissionToUpdateSpace,
                #[codec(index = 6)]
                NoPermissionToCreateSubspaces,
                #[codec(index = 7)]
                SpaceIsAtRoot,
                #[codec(index = 8)]
                NoUpdatesForSpacesSettings,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum RawEvent<_0> {
                #[codec(index = 0)]
                SpaceCreated(_0, ::core::primitive::u64),
                #[codec(index = 1)]
                SpaceUpdated(_0, ::core::primitive::u64),
                #[codec(index = 2)]
                SpaceDeleted(_0, ::core::primitive::u64),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Space {
                pub id: ::core::primitive::u64,
                pub created: runtime_types::pallet_utils::WhoAndWhen,
                pub updated: ::core::option::Option<
                    runtime_types::pallet_utils::WhoAndWhen,
                >,
                pub owner: ::subxt::sp_core::crypto::AccountId32,
                pub parent_id: ::core::option::Option<::core::primitive::u64>,
                pub handle: ::core::option::Option<
                    ::std::vec::Vec<::core::primitive::u8>,
                >,
                pub content: runtime_types::pallet_utils::Content,
                pub hidden: ::core::primitive::bool,
                pub posts_count: ::core::primitive::u32,
                pub hidden_posts_count: ::core::primitive::u32,
                pub followers_count: ::core::primitive::u32,
                pub score: ::core::primitive::i32,
                pub permissions: ::core::option::Option<
                    runtime_types::pallet_permissions::SpacePermissions,
                >,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SpaceUpdate {
                pub parent_id: ::core::option::Option<
                    ::core::option::Option<::core::primitive::u64>,
                >,
                pub handle: ::core::option::Option<
                    ::core::option::Option<
                        ::std::vec::Vec<::core::primitive::u8>,
                    >,
                >,
                pub content: ::core::option::Option<
                    runtime_types::pallet_utils::Content,
                >,
                pub hidden: ::core::option::Option<::core::primitive::bool>,
                pub permissions: ::core::option::Option<
                    ::core::option::Option<
                        runtime_types::pallet_permissions::SpacePermissions,
                    >,
                >,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct SpacesSettings {
                pub handles_enabled: ::core::primitive::bool,
            }
        }
        pub mod pallet_sudo {
            use super::runtime_types;
            pub mod pallet {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Call {
                    #[codec(index = 0)]
                    sudo {
                        call: ::std::boxed::Box<
                            runtime_types::subsocial_runtime::Call,
                        >,
                    },
                    #[codec(index = 1)]
                    sudo_unchecked_weight {
                        call: ::std::boxed::Box<
                            runtime_types::subsocial_runtime::Call,
                        >,
                        weight: ::core::primitive::u64,
                    },
                    #[codec(index = 2)]
                    set_key {
                        new: ::subxt::sp_runtime::MultiAddress<
                            ::subxt::sp_core::crypto::AccountId32,
                            (),
                        >,
                    },
                    #[codec(index = 3)]
                    sudo_as {
                        who: ::subxt::sp_runtime::MultiAddress<
                            ::subxt::sp_core::crypto::AccountId32,
                            (),
                        >,
                        call: ::std::boxed::Box<
                            runtime_types::subsocial_runtime::Call,
                        >,
                    },
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Error {
                    #[codec(index = 0)]
                    RequireSudo,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Event {
                    #[codec(index = 0)]
                    Sudid(
                        ::core::result::Result<
                            (),
                            runtime_types::sp_runtime::DispatchError,
                        >,
                    ),
                    #[codec(index = 1)]
                    KeyChanged(::subxt::sp_core::crypto::AccountId32),
                    #[codec(index = 2)]
                    SudoAsDone(
                        ::core::result::Result<
                            (),
                            runtime_types::sp_runtime::DispatchError,
                        >,
                    ),
                }
            }
        }
        pub mod pallet_timestamp {
            use super::runtime_types;
            pub mod pallet {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Call {
                    #[codec(index = 0)]
                    set {
                        #[codec(compact)]
                        now: ::core::primitive::u64,
                    },
                }
            }
        }
        pub mod pallet_transaction_payment {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct ChargeTransactionPayment(
                #[codec(compact)] pub ::core::primitive::u128,
            );
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Releases {
                #[codec(index = 0)]
                V1Ancient,
                #[codec(index = 1)]
                V2,
            }
        }
        pub mod pallet_utility {
            use super::runtime_types;
            pub mod pallet {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Call {
                    #[codec(index = 0)]
                    batch {
                        calls: ::std::vec::Vec<
                            runtime_types::subsocial_runtime::Call,
                        >,
                    },
                    #[codec(index = 1)]
                    as_derivative {
                        index: ::core::primitive::u16,
                        call: ::std::boxed::Box<
                            runtime_types::subsocial_runtime::Call,
                        >,
                    },
                    #[codec(index = 2)]
                    batch_all {
                        calls: ::std::vec::Vec<
                            runtime_types::subsocial_runtime::Call,
                        >,
                    },
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Error {
                    #[codec(index = 0)]
                    TooManyCalls,
                }
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum Event {
                    #[codec(index = 0)]
                    BatchInterrupted(
                        ::core::primitive::u32,
                        runtime_types::sp_runtime::DispatchError,
                    ),
                    #[codec(index = 1)]
                    BatchCompleted,
                    #[codec(index = 2)]
                    ItemCompleted,
                }
            }
        }
        pub mod pallet_utils {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode,
                :: subxt :: codec :: Decode,
                PartialEq,
                Eq,
                PartialOrd,
                Ord,
            )]
            pub enum Content {
                #[codec(index = 0)]
                None,
                #[codec(index = 1)]
                Raw(::std::vec::Vec<::core::primitive::u8>),
                #[codec(index = 2)]
                IPFS(::std::vec::Vec<::core::primitive::u8>),
                #[codec(index = 3)]
                Hyper(::std::vec::Vec<::core::primitive::u8>),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Error {
                #[codec(index = 0)]
                AccountIsBlocked,
                #[codec(index = 1)]
                ContentIsBlocked,
                #[codec(index = 2)]
                PostIsBlocked,
                #[codec(index = 3)]
                InvalidIpfsCid,
                #[codec(index = 4)]
                RawContentTypeNotSupported,
                #[codec(index = 5)]
                HypercoreContentTypeNotSupported,
                #[codec(index = 6)]
                HandleIsTooShort,
                #[codec(index = 7)]
                HandleIsTooLong,
                #[codec(index = 8)]
                HandleContainsInvalidChars,
                #[codec(index = 9)]
                ContentIsEmpty,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum RawEvent<_0> {
                #[codec(index = 0)]
                Deposit(_0),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum User<_0> {
                #[codec(index = 0)]
                Account(_0),
                #[codec(index = 1)]
                Space(::core::primitive::u64),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct WhoAndWhen {
                pub account: ::subxt::sp_core::crypto::AccountId32,
                pub block: ::core::primitive::u32,
                pub time: ::core::primitive::u64,
            }
        }
        pub mod primitive_types {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct H256(pub [::core::primitive::u8; 32usize]);
        }
        pub mod sp_arithmetic {
            use super::runtime_types;
            pub mod fixed_point {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: CompactAs,
                    :: subxt :: codec :: Encode,
                    :: subxt :: codec :: Decode,
                )]
                pub struct FixedU128(pub ::core::primitive::u128);
            }
            pub mod per_things {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: CompactAs,
                    :: subxt :: codec :: Encode,
                    :: subxt :: codec :: Decode,
                )]
                pub struct Perbill(pub ::core::primitive::u32);
            }
        }
        pub mod sp_core {
            use super::runtime_types;
            pub mod changes_trie {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct ChangesTrieConfiguration {
                    pub digest_interval: ::core::primitive::u32,
                    pub digest_levels: ::core::primitive::u32,
                }
            }
            pub mod crypto {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct AccountId32(pub [::core::primitive::u8; 32usize]);
            }
            pub mod ecdsa {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct Signature(pub [::core::primitive::u8; 65usize]);
            }
            pub mod ed25519 {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct Public(pub [::core::primitive::u8; 32usize]);
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct Signature(pub [::core::primitive::u8; 64usize]);
            }
            pub mod sr25519 {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct Signature(pub [::core::primitive::u8; 64usize]);
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Void {}
        }
        pub mod sp_finality_grandpa {
            use super::runtime_types;
            pub mod app {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct Public(pub runtime_types::sp_core::ed25519::Public);
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub struct Signature(
                    pub runtime_types::sp_core::ed25519::Signature,
                );
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Equivocation<_0, _1> {
                #[codec(index = 0)]
                Prevote(
                    runtime_types::finality_grandpa::Equivocation<
                        runtime_types::sp_finality_grandpa::app::Public,
                        runtime_types::finality_grandpa::Prevote<_0, _1>,
                        runtime_types::sp_finality_grandpa::app::Signature,
                    >,
                ),
                #[codec(index = 1)]
                Precommit(
                    runtime_types::finality_grandpa::Equivocation<
                        runtime_types::sp_finality_grandpa::app::Public,
                        runtime_types::finality_grandpa::Precommit<_0, _1>,
                        runtime_types::sp_finality_grandpa::app::Signature,
                    >,
                ),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct EquivocationProof<_0, _1> {
                pub set_id: ::core::primitive::u64,
                pub equivocation:
                    runtime_types::sp_finality_grandpa::Equivocation<_0, _1>,
            }
        }
        pub mod sp_runtime {
            use super::runtime_types;
            pub mod generic {
                use super::runtime_types;
                pub mod digest {
                    use super::runtime_types;
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub enum ChangesTrieSignal {
                        # [codec (index = 0)] NewConfiguration (:: core :: option :: Option < runtime_types :: sp_core :: changes_trie :: ChangesTrieConfiguration > ,) , }
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub struct Digest < _0 > { pub logs : :: std :: vec :: Vec < runtime_types :: sp_runtime :: generic :: digest :: DigestItem < _0 > > , }
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub enum DigestItem<_0> {
                        # [codec (index = 2)] ChangesTrieRoot (_0 ,) , # [codec (index = 6)] PreRuntime ([:: core :: primitive :: u8 ; 4usize] , :: std :: vec :: Vec < :: core :: primitive :: u8 > ,) , # [codec (index = 4)] Consensus ([:: core :: primitive :: u8 ; 4usize] , :: std :: vec :: Vec < :: core :: primitive :: u8 > ,) , # [codec (index = 5)] Seal ([:: core :: primitive :: u8 ; 4usize] , :: std :: vec :: Vec < :: core :: primitive :: u8 > ,) , # [codec (index = 7)] ChangesTrieSignal (runtime_types :: sp_runtime :: generic :: digest :: ChangesTrieSignal ,) , # [codec (index = 0)] Other (:: std :: vec :: Vec < :: core :: primitive :: u8 > ,) , # [codec (index = 8)] RuntimeEnvironmentUpdated , }
                }
                pub mod era {
                    use super::runtime_types;
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub enum Era {
                        #[codec(index = 0)]
                        Immortal,
                        #[codec(index = 1)]
                        Mortal1(::core::primitive::u8),
                        #[codec(index = 2)]
                        Mortal2(::core::primitive::u8),
                        #[codec(index = 3)]
                        Mortal3(::core::primitive::u8),
                        #[codec(index = 4)]
                        Mortal4(::core::primitive::u8),
                        #[codec(index = 5)]
                        Mortal5(::core::primitive::u8),
                        #[codec(index = 6)]
                        Mortal6(::core::primitive::u8),
                        #[codec(index = 7)]
                        Mortal7(::core::primitive::u8),
                        #[codec(index = 8)]
                        Mortal8(::core::primitive::u8),
                        #[codec(index = 9)]
                        Mortal9(::core::primitive::u8),
                        #[codec(index = 10)]
                        Mortal10(::core::primitive::u8),
                        #[codec(index = 11)]
                        Mortal11(::core::primitive::u8),
                        #[codec(index = 12)]
                        Mortal12(::core::primitive::u8),
                        #[codec(index = 13)]
                        Mortal13(::core::primitive::u8),
                        #[codec(index = 14)]
                        Mortal14(::core::primitive::u8),
                        #[codec(index = 15)]
                        Mortal15(::core::primitive::u8),
                        #[codec(index = 16)]
                        Mortal16(::core::primitive::u8),
                        #[codec(index = 17)]
                        Mortal17(::core::primitive::u8),
                        #[codec(index = 18)]
                        Mortal18(::core::primitive::u8),
                        #[codec(index = 19)]
                        Mortal19(::core::primitive::u8),
                        #[codec(index = 20)]
                        Mortal20(::core::primitive::u8),
                        #[codec(index = 21)]
                        Mortal21(::core::primitive::u8),
                        #[codec(index = 22)]
                        Mortal22(::core::primitive::u8),
                        #[codec(index = 23)]
                        Mortal23(::core::primitive::u8),
                        #[codec(index = 24)]
                        Mortal24(::core::primitive::u8),
                        #[codec(index = 25)]
                        Mortal25(::core::primitive::u8),
                        #[codec(index = 26)]
                        Mortal26(::core::primitive::u8),
                        #[codec(index = 27)]
                        Mortal27(::core::primitive::u8),
                        #[codec(index = 28)]
                        Mortal28(::core::primitive::u8),
                        #[codec(index = 29)]
                        Mortal29(::core::primitive::u8),
                        #[codec(index = 30)]
                        Mortal30(::core::primitive::u8),
                        #[codec(index = 31)]
                        Mortal31(::core::primitive::u8),
                        #[codec(index = 32)]
                        Mortal32(::core::primitive::u8),
                        #[codec(index = 33)]
                        Mortal33(::core::primitive::u8),
                        #[codec(index = 34)]
                        Mortal34(::core::primitive::u8),
                        #[codec(index = 35)]
                        Mortal35(::core::primitive::u8),
                        #[codec(index = 36)]
                        Mortal36(::core::primitive::u8),
                        #[codec(index = 37)]
                        Mortal37(::core::primitive::u8),
                        #[codec(index = 38)]
                        Mortal38(::core::primitive::u8),
                        #[codec(index = 39)]
                        Mortal39(::core::primitive::u8),
                        #[codec(index = 40)]
                        Mortal40(::core::primitive::u8),
                        #[codec(index = 41)]
                        Mortal41(::core::primitive::u8),
                        #[codec(index = 42)]
                        Mortal42(::core::primitive::u8),
                        #[codec(index = 43)]
                        Mortal43(::core::primitive::u8),
                        #[codec(index = 44)]
                        Mortal44(::core::primitive::u8),
                        #[codec(index = 45)]
                        Mortal45(::core::primitive::u8),
                        #[codec(index = 46)]
                        Mortal46(::core::primitive::u8),
                        #[codec(index = 47)]
                        Mortal47(::core::primitive::u8),
                        #[codec(index = 48)]
                        Mortal48(::core::primitive::u8),
                        #[codec(index = 49)]
                        Mortal49(::core::primitive::u8),
                        #[codec(index = 50)]
                        Mortal50(::core::primitive::u8),
                        #[codec(index = 51)]
                        Mortal51(::core::primitive::u8),
                        #[codec(index = 52)]
                        Mortal52(::core::primitive::u8),
                        #[codec(index = 53)]
                        Mortal53(::core::primitive::u8),
                        #[codec(index = 54)]
                        Mortal54(::core::primitive::u8),
                        #[codec(index = 55)]
                        Mortal55(::core::primitive::u8),
                        #[codec(index = 56)]
                        Mortal56(::core::primitive::u8),
                        #[codec(index = 57)]
                        Mortal57(::core::primitive::u8),
                        #[codec(index = 58)]
                        Mortal58(::core::primitive::u8),
                        #[codec(index = 59)]
                        Mortal59(::core::primitive::u8),
                        #[codec(index = 60)]
                        Mortal60(::core::primitive::u8),
                        #[codec(index = 61)]
                        Mortal61(::core::primitive::u8),
                        #[codec(index = 62)]
                        Mortal62(::core::primitive::u8),
                        #[codec(index = 63)]
                        Mortal63(::core::primitive::u8),
                        #[codec(index = 64)]
                        Mortal64(::core::primitive::u8),
                        #[codec(index = 65)]
                        Mortal65(::core::primitive::u8),
                        #[codec(index = 66)]
                        Mortal66(::core::primitive::u8),
                        #[codec(index = 67)]
                        Mortal67(::core::primitive::u8),
                        #[codec(index = 68)]
                        Mortal68(::core::primitive::u8),
                        #[codec(index = 69)]
                        Mortal69(::core::primitive::u8),
                        #[codec(index = 70)]
                        Mortal70(::core::primitive::u8),
                        #[codec(index = 71)]
                        Mortal71(::core::primitive::u8),
                        #[codec(index = 72)]
                        Mortal72(::core::primitive::u8),
                        #[codec(index = 73)]
                        Mortal73(::core::primitive::u8),
                        #[codec(index = 74)]
                        Mortal74(::core::primitive::u8),
                        #[codec(index = 75)]
                        Mortal75(::core::primitive::u8),
                        #[codec(index = 76)]
                        Mortal76(::core::primitive::u8),
                        #[codec(index = 77)]
                        Mortal77(::core::primitive::u8),
                        #[codec(index = 78)]
                        Mortal78(::core::primitive::u8),
                        #[codec(index = 79)]
                        Mortal79(::core::primitive::u8),
                        #[codec(index = 80)]
                        Mortal80(::core::primitive::u8),
                        #[codec(index = 81)]
                        Mortal81(::core::primitive::u8),
                        #[codec(index = 82)]
                        Mortal82(::core::primitive::u8),
                        #[codec(index = 83)]
                        Mortal83(::core::primitive::u8),
                        #[codec(index = 84)]
                        Mortal84(::core::primitive::u8),
                        #[codec(index = 85)]
                        Mortal85(::core::primitive::u8),
                        #[codec(index = 86)]
                        Mortal86(::core::primitive::u8),
                        #[codec(index = 87)]
                        Mortal87(::core::primitive::u8),
                        #[codec(index = 88)]
                        Mortal88(::core::primitive::u8),
                        #[codec(index = 89)]
                        Mortal89(::core::primitive::u8),
                        #[codec(index = 90)]
                        Mortal90(::core::primitive::u8),
                        #[codec(index = 91)]
                        Mortal91(::core::primitive::u8),
                        #[codec(index = 92)]
                        Mortal92(::core::primitive::u8),
                        #[codec(index = 93)]
                        Mortal93(::core::primitive::u8),
                        #[codec(index = 94)]
                        Mortal94(::core::primitive::u8),
                        #[codec(index = 95)]
                        Mortal95(::core::primitive::u8),
                        #[codec(index = 96)]
                        Mortal96(::core::primitive::u8),
                        #[codec(index = 97)]
                        Mortal97(::core::primitive::u8),
                        #[codec(index = 98)]
                        Mortal98(::core::primitive::u8),
                        #[codec(index = 99)]
                        Mortal99(::core::primitive::u8),
                        #[codec(index = 100)]
                        Mortal100(::core::primitive::u8),
                        #[codec(index = 101)]
                        Mortal101(::core::primitive::u8),
                        #[codec(index = 102)]
                        Mortal102(::core::primitive::u8),
                        #[codec(index = 103)]
                        Mortal103(::core::primitive::u8),
                        #[codec(index = 104)]
                        Mortal104(::core::primitive::u8),
                        #[codec(index = 105)]
                        Mortal105(::core::primitive::u8),
                        #[codec(index = 106)]
                        Mortal106(::core::primitive::u8),
                        #[codec(index = 107)]
                        Mortal107(::core::primitive::u8),
                        #[codec(index = 108)]
                        Mortal108(::core::primitive::u8),
                        #[codec(index = 109)]
                        Mortal109(::core::primitive::u8),
                        #[codec(index = 110)]
                        Mortal110(::core::primitive::u8),
                        #[codec(index = 111)]
                        Mortal111(::core::primitive::u8),
                        #[codec(index = 112)]
                        Mortal112(::core::primitive::u8),
                        #[codec(index = 113)]
                        Mortal113(::core::primitive::u8),
                        #[codec(index = 114)]
                        Mortal114(::core::primitive::u8),
                        #[codec(index = 115)]
                        Mortal115(::core::primitive::u8),
                        #[codec(index = 116)]
                        Mortal116(::core::primitive::u8),
                        #[codec(index = 117)]
                        Mortal117(::core::primitive::u8),
                        #[codec(index = 118)]
                        Mortal118(::core::primitive::u8),
                        #[codec(index = 119)]
                        Mortal119(::core::primitive::u8),
                        #[codec(index = 120)]
                        Mortal120(::core::primitive::u8),
                        #[codec(index = 121)]
                        Mortal121(::core::primitive::u8),
                        #[codec(index = 122)]
                        Mortal122(::core::primitive::u8),
                        #[codec(index = 123)]
                        Mortal123(::core::primitive::u8),
                        #[codec(index = 124)]
                        Mortal124(::core::primitive::u8),
                        #[codec(index = 125)]
                        Mortal125(::core::primitive::u8),
                        #[codec(index = 126)]
                        Mortal126(::core::primitive::u8),
                        #[codec(index = 127)]
                        Mortal127(::core::primitive::u8),
                        #[codec(index = 128)]
                        Mortal128(::core::primitive::u8),
                        #[codec(index = 129)]
                        Mortal129(::core::primitive::u8),
                        #[codec(index = 130)]
                        Mortal130(::core::primitive::u8),
                        #[codec(index = 131)]
                        Mortal131(::core::primitive::u8),
                        #[codec(index = 132)]
                        Mortal132(::core::primitive::u8),
                        #[codec(index = 133)]
                        Mortal133(::core::primitive::u8),
                        #[codec(index = 134)]
                        Mortal134(::core::primitive::u8),
                        #[codec(index = 135)]
                        Mortal135(::core::primitive::u8),
                        #[codec(index = 136)]
                        Mortal136(::core::primitive::u8),
                        #[codec(index = 137)]
                        Mortal137(::core::primitive::u8),
                        #[codec(index = 138)]
                        Mortal138(::core::primitive::u8),
                        #[codec(index = 139)]
                        Mortal139(::core::primitive::u8),
                        #[codec(index = 140)]
                        Mortal140(::core::primitive::u8),
                        #[codec(index = 141)]
                        Mortal141(::core::primitive::u8),
                        #[codec(index = 142)]
                        Mortal142(::core::primitive::u8),
                        #[codec(index = 143)]
                        Mortal143(::core::primitive::u8),
                        #[codec(index = 144)]
                        Mortal144(::core::primitive::u8),
                        #[codec(index = 145)]
                        Mortal145(::core::primitive::u8),
                        #[codec(index = 146)]
                        Mortal146(::core::primitive::u8),
                        #[codec(index = 147)]
                        Mortal147(::core::primitive::u8),
                        #[codec(index = 148)]
                        Mortal148(::core::primitive::u8),
                        #[codec(index = 149)]
                        Mortal149(::core::primitive::u8),
                        #[codec(index = 150)]
                        Mortal150(::core::primitive::u8),
                        #[codec(index = 151)]
                        Mortal151(::core::primitive::u8),
                        #[codec(index = 152)]
                        Mortal152(::core::primitive::u8),
                        #[codec(index = 153)]
                        Mortal153(::core::primitive::u8),
                        #[codec(index = 154)]
                        Mortal154(::core::primitive::u8),
                        #[codec(index = 155)]
                        Mortal155(::core::primitive::u8),
                        #[codec(index = 156)]
                        Mortal156(::core::primitive::u8),
                        #[codec(index = 157)]
                        Mortal157(::core::primitive::u8),
                        #[codec(index = 158)]
                        Mortal158(::core::primitive::u8),
                        #[codec(index = 159)]
                        Mortal159(::core::primitive::u8),
                        #[codec(index = 160)]
                        Mortal160(::core::primitive::u8),
                        #[codec(index = 161)]
                        Mortal161(::core::primitive::u8),
                        #[codec(index = 162)]
                        Mortal162(::core::primitive::u8),
                        #[codec(index = 163)]
                        Mortal163(::core::primitive::u8),
                        #[codec(index = 164)]
                        Mortal164(::core::primitive::u8),
                        #[codec(index = 165)]
                        Mortal165(::core::primitive::u8),
                        #[codec(index = 166)]
                        Mortal166(::core::primitive::u8),
                        #[codec(index = 167)]
                        Mortal167(::core::primitive::u8),
                        #[codec(index = 168)]
                        Mortal168(::core::primitive::u8),
                        #[codec(index = 169)]
                        Mortal169(::core::primitive::u8),
                        #[codec(index = 170)]
                        Mortal170(::core::primitive::u8),
                        #[codec(index = 171)]
                        Mortal171(::core::primitive::u8),
                        #[codec(index = 172)]
                        Mortal172(::core::primitive::u8),
                        #[codec(index = 173)]
                        Mortal173(::core::primitive::u8),
                        #[codec(index = 174)]
                        Mortal174(::core::primitive::u8),
                        #[codec(index = 175)]
                        Mortal175(::core::primitive::u8),
                        #[codec(index = 176)]
                        Mortal176(::core::primitive::u8),
                        #[codec(index = 177)]
                        Mortal177(::core::primitive::u8),
                        #[codec(index = 178)]
                        Mortal178(::core::primitive::u8),
                        #[codec(index = 179)]
                        Mortal179(::core::primitive::u8),
                        #[codec(index = 180)]
                        Mortal180(::core::primitive::u8),
                        #[codec(index = 181)]
                        Mortal181(::core::primitive::u8),
                        #[codec(index = 182)]
                        Mortal182(::core::primitive::u8),
                        #[codec(index = 183)]
                        Mortal183(::core::primitive::u8),
                        #[codec(index = 184)]
                        Mortal184(::core::primitive::u8),
                        #[codec(index = 185)]
                        Mortal185(::core::primitive::u8),
                        #[codec(index = 186)]
                        Mortal186(::core::primitive::u8),
                        #[codec(index = 187)]
                        Mortal187(::core::primitive::u8),
                        #[codec(index = 188)]
                        Mortal188(::core::primitive::u8),
                        #[codec(index = 189)]
                        Mortal189(::core::primitive::u8),
                        #[codec(index = 190)]
                        Mortal190(::core::primitive::u8),
                        #[codec(index = 191)]
                        Mortal191(::core::primitive::u8),
                        #[codec(index = 192)]
                        Mortal192(::core::primitive::u8),
                        #[codec(index = 193)]
                        Mortal193(::core::primitive::u8),
                        #[codec(index = 194)]
                        Mortal194(::core::primitive::u8),
                        #[codec(index = 195)]
                        Mortal195(::core::primitive::u8),
                        #[codec(index = 196)]
                        Mortal196(::core::primitive::u8),
                        #[codec(index = 197)]
                        Mortal197(::core::primitive::u8),
                        #[codec(index = 198)]
                        Mortal198(::core::primitive::u8),
                        #[codec(index = 199)]
                        Mortal199(::core::primitive::u8),
                        #[codec(index = 200)]
                        Mortal200(::core::primitive::u8),
                        #[codec(index = 201)]
                        Mortal201(::core::primitive::u8),
                        #[codec(index = 202)]
                        Mortal202(::core::primitive::u8),
                        #[codec(index = 203)]
                        Mortal203(::core::primitive::u8),
                        #[codec(index = 204)]
                        Mortal204(::core::primitive::u8),
                        #[codec(index = 205)]
                        Mortal205(::core::primitive::u8),
                        #[codec(index = 206)]
                        Mortal206(::core::primitive::u8),
                        #[codec(index = 207)]
                        Mortal207(::core::primitive::u8),
                        #[codec(index = 208)]
                        Mortal208(::core::primitive::u8),
                        #[codec(index = 209)]
                        Mortal209(::core::primitive::u8),
                        #[codec(index = 210)]
                        Mortal210(::core::primitive::u8),
                        #[codec(index = 211)]
                        Mortal211(::core::primitive::u8),
                        #[codec(index = 212)]
                        Mortal212(::core::primitive::u8),
                        #[codec(index = 213)]
                        Mortal213(::core::primitive::u8),
                        #[codec(index = 214)]
                        Mortal214(::core::primitive::u8),
                        #[codec(index = 215)]
                        Mortal215(::core::primitive::u8),
                        #[codec(index = 216)]
                        Mortal216(::core::primitive::u8),
                        #[codec(index = 217)]
                        Mortal217(::core::primitive::u8),
                        #[codec(index = 218)]
                        Mortal218(::core::primitive::u8),
                        #[codec(index = 219)]
                        Mortal219(::core::primitive::u8),
                        #[codec(index = 220)]
                        Mortal220(::core::primitive::u8),
                        #[codec(index = 221)]
                        Mortal221(::core::primitive::u8),
                        #[codec(index = 222)]
                        Mortal222(::core::primitive::u8),
                        #[codec(index = 223)]
                        Mortal223(::core::primitive::u8),
                        #[codec(index = 224)]
                        Mortal224(::core::primitive::u8),
                        #[codec(index = 225)]
                        Mortal225(::core::primitive::u8),
                        #[codec(index = 226)]
                        Mortal226(::core::primitive::u8),
                        #[codec(index = 227)]
                        Mortal227(::core::primitive::u8),
                        #[codec(index = 228)]
                        Mortal228(::core::primitive::u8),
                        #[codec(index = 229)]
                        Mortal229(::core::primitive::u8),
                        #[codec(index = 230)]
                        Mortal230(::core::primitive::u8),
                        #[codec(index = 231)]
                        Mortal231(::core::primitive::u8),
                        #[codec(index = 232)]
                        Mortal232(::core::primitive::u8),
                        #[codec(index = 233)]
                        Mortal233(::core::primitive::u8),
                        #[codec(index = 234)]
                        Mortal234(::core::primitive::u8),
                        #[codec(index = 235)]
                        Mortal235(::core::primitive::u8),
                        #[codec(index = 236)]
                        Mortal236(::core::primitive::u8),
                        #[codec(index = 237)]
                        Mortal237(::core::primitive::u8),
                        #[codec(index = 238)]
                        Mortal238(::core::primitive::u8),
                        #[codec(index = 239)]
                        Mortal239(::core::primitive::u8),
                        #[codec(index = 240)]
                        Mortal240(::core::primitive::u8),
                        #[codec(index = 241)]
                        Mortal241(::core::primitive::u8),
                        #[codec(index = 242)]
                        Mortal242(::core::primitive::u8),
                        #[codec(index = 243)]
                        Mortal243(::core::primitive::u8),
                        #[codec(index = 244)]
                        Mortal244(::core::primitive::u8),
                        #[codec(index = 245)]
                        Mortal245(::core::primitive::u8),
                        #[codec(index = 246)]
                        Mortal246(::core::primitive::u8),
                        #[codec(index = 247)]
                        Mortal247(::core::primitive::u8),
                        #[codec(index = 248)]
                        Mortal248(::core::primitive::u8),
                        #[codec(index = 249)]
                        Mortal249(::core::primitive::u8),
                        #[codec(index = 250)]
                        Mortal250(::core::primitive::u8),
                        #[codec(index = 251)]
                        Mortal251(::core::primitive::u8),
                        #[codec(index = 252)]
                        Mortal252(::core::primitive::u8),
                        #[codec(index = 253)]
                        Mortal253(::core::primitive::u8),
                        #[codec(index = 254)]
                        Mortal254(::core::primitive::u8),
                        #[codec(index = 255)]
                        Mortal255(::core::primitive::u8),
                    }
                }
                pub mod unchecked_extrinsic {
                    use super::runtime_types;
                    #[derive(
                        :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                    )]
                    pub struct UncheckedExtrinsic<_0, _1, _2, _3>(
                        ::std::vec::Vec<::core::primitive::u8>,
                        #[codec(skip)]
                        pub  ::core::marker::PhantomData<(_0, _1, _2, _3)>,
                    );
                }
            }
            pub mod multiaddress {
                use super::runtime_types;
                #[derive(
                    :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
                )]
                pub enum MultiAddress<_0, _1> {
                    #[codec(index = 0)]
                    Id(_0),
                    #[codec(index = 1)]
                    Index(#[codec(compact)] _1),
                    #[codec(index = 2)]
                    Raw(::std::vec::Vec<::core::primitive::u8>),
                    #[codec(index = 3)]
                    Address32([::core::primitive::u8; 32usize]),
                    #[codec(index = 4)]
                    Address20([::core::primitive::u8; 20usize]),
                }
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum ArithmeticError {
                #[codec(index = 0)]
                Underflow,
                #[codec(index = 1)]
                Overflow,
                #[codec(index = 2)]
                DivisionByZero,
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum DispatchError {
                #[codec(index = 0)]
                Other,
                #[codec(index = 1)]
                CannotLookup,
                #[codec(index = 2)]
                BadOrigin,
                #[codec(index = 3)]
                Module {
                    index: ::core::primitive::u8,
                    error: ::core::primitive::u8,
                },
                #[codec(index = 4)]
                ConsumerRemaining,
                #[codec(index = 5)]
                NoProviders,
                #[codec(index = 6)]
                Token(runtime_types::sp_runtime::TokenError),
                #[codec(index = 7)]
                Arithmetic(runtime_types::sp_runtime::ArithmeticError),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum MultiSignature {
                #[codec(index = 0)]
                Ed25519(runtime_types::sp_core::ed25519::Signature),
                #[codec(index = 1)]
                Sr25519(runtime_types::sp_core::sr25519::Signature),
                #[codec(index = 2)]
                Ecdsa(runtime_types::sp_core::ecdsa::Signature),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum TokenError {
                #[codec(index = 0)]
                NoFunds,
                #[codec(index = 1)]
                WouldDie,
                #[codec(index = 2)]
                BelowMinimum,
                #[codec(index = 3)]
                CannotCreate,
                #[codec(index = 4)]
                UnknownAsset,
                #[codec(index = 5)]
                Frozen,
                #[codec(index = 6)]
                Unsupported,
            }
        }
        pub mod sp_version {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct RuntimeVersion {
                pub spec_name: ::std::string::String,
                pub impl_name: ::std::string::String,
                pub authoring_version: ::core::primitive::u32,
                pub spec_version: ::core::primitive::u32,
                pub impl_version: ::core::primitive::u32,
                pub apis: ::std::vec::Vec<(
                    [::core::primitive::u8; 8usize],
                    ::core::primitive::u32,
                )>,
                pub transaction_version: ::core::primitive::u32,
            }
        }
        pub mod subsocial_runtime {
            use super::runtime_types;
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Call {
                #[codec(index = 0)]
                System(runtime_types::frame_system::pallet::Call),
                #[codec(index = 2)]
                Timestamp(runtime_types::pallet_timestamp::pallet::Call),
                #[codec(index = 4)]
                Grandpa(runtime_types::pallet_grandpa::pallet::Call),
                #[codec(index = 5)]
                Balances(runtime_types::pallet_balances::pallet::Call),
                #[codec(index = 7)]
                Sudo(runtime_types::pallet_sudo::pallet::Call),
                #[codec(index = 8)]
                Scheduler(runtime_types::pallet_scheduler::pallet::Call),
                #[codec(index = 9)]
                Utility(runtime_types::pallet_utility::pallet::Call),
                #[codec(index = 10)]
                Permissions(runtime_types::pallet_permissions::Call),
                #[codec(index = 11)]
                Posts(runtime_types::pallet_posts::Call),
                #[codec(index = 13)]
                ProfileFollows(runtime_types::pallet_profile_follows::Call),
                #[codec(index = 14)]
                Profiles(runtime_types::pallet_profiles::Call),
                #[codec(index = 16)]
                Reactions(runtime_types::pallet_reactions::Call),
                #[codec(index = 17)]
                Roles(runtime_types::pallet_roles::Call),
                #[codec(index = 18)]
                SpaceFollows(runtime_types::pallet_space_follows::Call),
                #[codec(index = 20)]
                SpaceOwnership(runtime_types::pallet_space_ownership::Call),
                #[codec(index = 21)]
                Spaces(runtime_types::pallet_spaces::Call),
                #[codec(index = 23)]
                Faucets(runtime_types::pallet_faucets::Call),
                #[codec(index = 24)]
                DotsamaClaims(
                    runtime_types::pallet_dotsama_claims::pallet::Call,
                ),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum Event {
                #[codec(index = 0)]
                System(runtime_types::frame_system::pallet::Event),
                #[codec(index = 4)]
                Grandpa(runtime_types::pallet_grandpa::pallet::Event),
                #[codec(index = 5)]
                Balances(runtime_types::pallet_balances::pallet::Event),
                #[codec(index = 7)]
                Sudo(runtime_types::pallet_sudo::pallet::Event),
                #[codec(index = 8)]
                Scheduler(runtime_types::pallet_scheduler::pallet::Event),
                #[codec(index = 9)]
                Utility(runtime_types::pallet_utility::pallet::Event),
                #[codec(index = 11)]
                Posts(
                    runtime_types::pallet_posts::RawEvent<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ),
                #[codec(index = 13)]
                ProfileFollows(
                    runtime_types::pallet_profile_follows::RawEvent<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ),
                #[codec(index = 14)]
                Profiles(
                    runtime_types::pallet_profiles::RawEvent<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ),
                #[codec(index = 16)]
                Reactions(
                    runtime_types::pallet_reactions::RawEvent<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ),
                #[codec(index = 17)]
                Roles(
                    runtime_types::pallet_roles::RawEvent<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ),
                #[codec(index = 18)]
                SpaceFollows(
                    runtime_types::pallet_space_follows::RawEvent<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ),
                #[codec(index = 20)]
                SpaceOwnership(
                    runtime_types::pallet_space_ownership::RawEvent<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ),
                #[codec(index = 21)]
                Spaces(
                    runtime_types::pallet_spaces::RawEvent<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ),
                #[codec(index = 22)]
                Utils(
                    runtime_types::pallet_utils::RawEvent<
                        ::core::primitive::u128,
                    >,
                ),
                #[codec(index = 23)]
                Faucets(
                    runtime_types::pallet_faucets::RawEvent<
                        ::subxt::sp_core::crypto::AccountId32,
                        ::core::primitive::u128,
                    >,
                ),
                #[codec(index = 24)]
                DotsamaClaims(
                    runtime_types::pallet_dotsama_claims::pallet::Event,
                ),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub enum OriginCaller {
                #[codec(index = 0)]
                system(
                    runtime_types::frame_system::RawOrigin<
                        ::subxt::sp_core::crypto::AccountId32,
                    >,
                ),
                #[codec(index = 1)]
                Void(runtime_types::sp_core::Void),
            }
            #[derive(
                :: subxt :: codec :: Encode, :: subxt :: codec :: Decode,
            )]
            pub struct Runtime {}
        }
    }
    #[doc = r" Default configuration of common types for a target Substrate runtime."]
    #[derive(Clone, Debug, Default, Eq, PartialEq)]
    pub struct DefaultConfig;
    impl ::subxt::Config for DefaultConfig {
        type Index = u32;
        type BlockNumber = u32;
        type Hash = ::subxt::sp_core::H256;
        type Hashing = ::subxt::sp_runtime::traits::BlakeTwo256;
        type AccountId = ::subxt::sp_runtime::AccountId32;
        type Address = ::subxt::sp_runtime::MultiAddress<Self::AccountId, u32>;
        type Header = ::subxt::sp_runtime::generic::Header<
            Self::BlockNumber,
            ::subxt::sp_runtime::traits::BlakeTwo256,
        >;
        type Signature = ::subxt::sp_runtime::MultiSignature;
        type Extrinsic = ::subxt::sp_runtime::OpaqueExtrinsic;
    }
    impl ::subxt::ExtrinsicExtraData<DefaultConfig> for DefaultConfig {
        type AccountData = AccountData;
        type Extra = ::subxt::DefaultExtra<DefaultConfig>;
    }
    pub type AccountData = self::system::storage::Account;
    impl ::subxt::AccountData<DefaultConfig> for AccountData {
        fn nonce(
            result: &<Self as ::subxt::StorageEntry>::Value,
        ) -> <DefaultConfig as ::subxt::Config>::Index {
            result.nonce
        }
        fn storage_entry(
            account_id: <DefaultConfig as ::subxt::Config>::AccountId,
        ) -> Self {
            Self(account_id)
        }
    }
    pub struct RuntimeApi<T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>> {
        pub client: ::subxt::Client<T>,
    }
    impl<T> ::core::convert::From<::subxt::Client<T>> for RuntimeApi<T>
    where
        T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
    {
        fn from(client: ::subxt::Client<T>) -> Self {
            Self { client }
        }
    }
    impl<'a, T> RuntimeApi<T>
    where
        T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
    {
        pub fn storage(&'a self) -> StorageApi<'a, T> {
            StorageApi {
                client: &self.client,
            }
        }
        pub fn tx(&'a self) -> TransactionApi<'a, T> {
            TransactionApi {
                client: &self.client,
            }
        }
    }
    pub struct StorageApi<'a, T>
    where
        T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
    {
        client: &'a ::subxt::Client<T>,
    }
    impl<'a, T> StorageApi<'a, T>
    where
        T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
    {
        pub fn system(&self) -> system::storage::StorageApi<'a, T> {
            system::storage::StorageApi::new(self.client)
        }
        pub fn randomness_collective_flip(
            &self,
        ) -> randomness_collective_flip::storage::StorageApi<'a, T> {
            randomness_collective_flip::storage::StorageApi::new(self.client)
        }
        pub fn timestamp(&self) -> timestamp::storage::StorageApi<'a, T> {
            timestamp::storage::StorageApi::new(self.client)
        }
        pub fn grandpa(&self) -> grandpa::storage::StorageApi<'a, T> {
            grandpa::storage::StorageApi::new(self.client)
        }
        pub fn balances(&self) -> balances::storage::StorageApi<'a, T> {
            balances::storage::StorageApi::new(self.client)
        }
        pub fn transaction_payment(
            &self,
        ) -> transaction_payment::storage::StorageApi<'a, T> {
            transaction_payment::storage::StorageApi::new(self.client)
        }
        pub fn sudo(&self) -> sudo::storage::StorageApi<'a, T> {
            sudo::storage::StorageApi::new(self.client)
        }
        pub fn scheduler(&self) -> scheduler::storage::StorageApi<'a, T> {
            scheduler::storage::StorageApi::new(self.client)
        }
        pub fn posts(&self) -> posts::storage::StorageApi<'a, T> {
            posts::storage::StorageApi::new(self.client)
        }
        pub fn post_history(&self) -> post_history::storage::StorageApi<'a, T> {
            post_history::storage::StorageApi::new(self.client)
        }
        pub fn profile_follows(
            &self,
        ) -> profile_follows::storage::StorageApi<'a, T> {
            profile_follows::storage::StorageApi::new(self.client)
        }
        pub fn profiles(&self) -> profiles::storage::StorageApi<'a, T> {
            profiles::storage::StorageApi::new(self.client)
        }
        pub fn profile_history(
            &self,
        ) -> profile_history::storage::StorageApi<'a, T> {
            profile_history::storage::StorageApi::new(self.client)
        }
        pub fn reactions(&self) -> reactions::storage::StorageApi<'a, T> {
            reactions::storage::StorageApi::new(self.client)
        }
        pub fn roles(&self) -> roles::storage::StorageApi<'a, T> {
            roles::storage::StorageApi::new(self.client)
        }
        pub fn space_follows(
            &self,
        ) -> space_follows::storage::StorageApi<'a, T> {
            space_follows::storage::StorageApi::new(self.client)
        }
        pub fn space_history(
            &self,
        ) -> space_history::storage::StorageApi<'a, T> {
            space_history::storage::StorageApi::new(self.client)
        }
        pub fn space_ownership(
            &self,
        ) -> space_ownership::storage::StorageApi<'a, T> {
            space_ownership::storage::StorageApi::new(self.client)
        }
        pub fn spaces(&self) -> spaces::storage::StorageApi<'a, T> {
            spaces::storage::StorageApi::new(self.client)
        }
        pub fn utils(&self) -> utils::storage::StorageApi<'a, T> {
            utils::storage::StorageApi::new(self.client)
        }
        pub fn faucets(&self) -> faucets::storage::StorageApi<'a, T> {
            faucets::storage::StorageApi::new(self.client)
        }
        pub fn dotsama_claims(
            &self,
        ) -> dotsama_claims::storage::StorageApi<'a, T> {
            dotsama_claims::storage::StorageApi::new(self.client)
        }
    }
    pub struct TransactionApi<
        'a,
        T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
    > {
        client: &'a ::subxt::Client<T>,
    }
    impl<'a, T> TransactionApi<'a, T>
    where
        T: ::subxt::Config + ::subxt::ExtrinsicExtraData<T>,
    {
        pub fn system(&self) -> system::calls::TransactionApi<'a, T> {
            system::calls::TransactionApi::new(self.client)
        }
        pub fn timestamp(&self) -> timestamp::calls::TransactionApi<'a, T> {
            timestamp::calls::TransactionApi::new(self.client)
        }
        pub fn grandpa(&self) -> grandpa::calls::TransactionApi<'a, T> {
            grandpa::calls::TransactionApi::new(self.client)
        }
        pub fn balances(&self) -> balances::calls::TransactionApi<'a, T> {
            balances::calls::TransactionApi::new(self.client)
        }
        pub fn sudo(&self) -> sudo::calls::TransactionApi<'a, T> {
            sudo::calls::TransactionApi::new(self.client)
        }
        pub fn scheduler(&self) -> scheduler::calls::TransactionApi<'a, T> {
            scheduler::calls::TransactionApi::new(self.client)
        }
        pub fn utility(&self) -> utility::calls::TransactionApi<'a, T> {
            utility::calls::TransactionApi::new(self.client)
        }
        pub fn permissions(&self) -> permissions::calls::TransactionApi<'a, T> {
            permissions::calls::TransactionApi::new(self.client)
        }
        pub fn posts(&self) -> posts::calls::TransactionApi<'a, T> {
            posts::calls::TransactionApi::new(self.client)
        }
        pub fn profile_follows(
            &self,
        ) -> profile_follows::calls::TransactionApi<'a, T> {
            profile_follows::calls::TransactionApi::new(self.client)
        }
        pub fn profiles(&self) -> profiles::calls::TransactionApi<'a, T> {
            profiles::calls::TransactionApi::new(self.client)
        }
        pub fn reactions(&self) -> reactions::calls::TransactionApi<'a, T> {
            reactions::calls::TransactionApi::new(self.client)
        }
        pub fn roles(&self) -> roles::calls::TransactionApi<'a, T> {
            roles::calls::TransactionApi::new(self.client)
        }
        pub fn space_follows(
            &self,
        ) -> space_follows::calls::TransactionApi<'a, T> {
            space_follows::calls::TransactionApi::new(self.client)
        }
        pub fn space_ownership(
            &self,
        ) -> space_ownership::calls::TransactionApi<'a, T> {
            space_ownership::calls::TransactionApi::new(self.client)
        }
        pub fn spaces(&self) -> spaces::calls::TransactionApi<'a, T> {
            spaces::calls::TransactionApi::new(self.client)
        }
        pub fn faucets(&self) -> faucets::calls::TransactionApi<'a, T> {
            faucets::calls::TransactionApi::new(self.client)
        }
        pub fn dotsama_claims(
            &self,
        ) -> dotsama_claims::calls::TransactionApi<'a, T> {
            dotsama_claims::calls::TransactionApi::new(self.client)
        }
    }
}
