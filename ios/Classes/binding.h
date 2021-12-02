#include <stdint.h>

struct SubscoialConfig {
  const char *url;
};

// Owned version of Dart's [Uint8List] in Rust.
//
// **Note**: Automatically frees the underlying memory allocated from Dart.
struct Uint8List {
  uint8_t *buf;
  uintptr_t len;
};

// Init the SDK
//
// ### Safety
// This should only called once, in the beginning of the application.
// otherwise it would be **UB** if called more than once while there is other calls to the SDK.
//
// However, you can call this again, if you disposed the client and the signer.
//
// We added checks as a safety mechanism, to ensure no undefined behavior would happen,
// but take care that not all paths are tested here.
int32_t subsocial_init_sdk(int64_t port, struct SubscoialConfig *config);

int32_t subsocial_dispatch(int64_t port, struct Uint8List *buffer);

// Dispose (a la drop) the Client and all active connections.
// if the client is still there, it will close it and return `1`
// otherwise, returns 0xdead.
int32_t subsocial_dispose_client(void);

// Dispose (a la drop) the Signer and zerozie the memory.
// if the signer is still there, it will drop it and return `1`
// otherwise, returns 0xdead.
int32_t subsocial_dispose_signer(void);

// a no-op function that forces xcode to link to our lib.
// ## Safety
// lol
void subsocial_link_me_plz(void);
