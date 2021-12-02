use std::error::Error;

#[cfg(feature = "generate-runtime")]
fn parse_and_generate_runtime(
    path: &str,
    out: &str,
) -> Result<(), Box<dyn Error>> {
    use frame_metadata::RuntimeMetadataPrefixed;
    use scale::Decode;
    use std::io::Read;

    println!("cargo:rerun-if-changed=./{}", path);
    let mut file = std::fs::File::open(path)?;
    let mut bytes = Vec::new();
    file.read_to_end(&mut bytes)?;
    let metadata =
        <RuntimeMetadataPrefixed as Decode>::decode(&mut &bytes[..])?;
    let generator = subxt_codegen::RuntimeGenerator::new(metadata);
    let item_mod = syn::parse_quote!(
        pub mod api {}
    );
    let runtime_api = generator.generate_runtime(item_mod, Default::default());
    std::fs::write(out, runtime_api.to_string())?;
    Ok(())
}

#[cfg(feature = "generate-runtime")]
pub fn generate_subsocial_runtime() -> Result<(), Box<dyn Error>> {
    parse_and_generate_runtime("metadata/subsocial.scale", "src/subsocial.rs")
}

fn main() -> Result<(), Box<dyn Error>> {
    #[cfg(feature = "generate-runtime")]
    generate_subsocial_runtime()?;
    Ok(())
}
