use std::env;

fn main() {
    prost_build::Config::new()
        .out_dir("src/pb")
        .compile_protos(&["def.proto"], &["."])
        .expect("Failed to compile protobuf");

    let crate_dir = env::var("CARGO_MANIFEST_DIR").unwrap();
    let config = cbindgen::Config {
        language: cbindgen::Language::C,
        documentation_style: cbindgen::DocumentationStyle::C99,
        line_length: 100,
        style: cbindgen::Style::Type,
        ..Default::default()
    };
    cbindgen::Builder::new()
        .with_crate(crate_dir)
        .with_config(config)
        .generate()
        .expect("Unable to generate bindings")
        .write_to_file("binding.h");
}
