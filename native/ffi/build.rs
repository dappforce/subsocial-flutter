use std::env;

fn main() {
    // Tell Cargo that if the given file changes, to rerun this build script.
    println!("cargo:rerun-if-changed=def.proto");
    println!("cargo:rerun-if-changed=src/lib.rs");

    prost_build::Config::new()
        .out_dir("src/pb")
        .compile_protos(&["def.proto"], &["."])
        .expect("Failed to compile protobuf");

    let crate_dir = env::var("CARGO_MANIFEST_DIR").unwrap();
    let config = cbindgen::Config {
        language: cbindgen::Language::C,
        documentation_style: cbindgen::DocumentationStyle::C99,
        line_length: 100,
        style: cbindgen::Style::Tag,
        no_includes: true,
        sys_includes: vec![String::from("stdint.h")],
        ..Default::default()
    };
    cbindgen::Builder::new()
        .with_crate(crate_dir)
        .with_config(config)
        .generate()
        .expect("Unable to generate bindings")
        .write_to_file("binding.h");
    // run cargo fmt to format the generated protobuf
    let mut cmd = std::process::Command::new("cargo");
    cmd.arg("fmt");
    cmd.status().expect("Failed to run cargo fmt");
}
