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

int32_t subsocial_init_client(int64_t port, struct SubscoialConfig *config);

int32_t subsocial_dispatch(int64_t port, struct Uint8List *buffer);

// a no-op function that forces xcode to link to our lib.
// ## Safety
// lol
void subsocial_link_me_plz(void);
