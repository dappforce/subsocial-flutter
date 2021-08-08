#include <stdint.h>

struct SubscoialConfig {
  const char *url;
};

// Immutable View of Array of bytes.
struct ArrayView {
  uint8_t *buf;
  uintptr_t len;
};

int32_t subsocial_init_client(int64_t port, struct SubscoialConfig *config);

int32_t subsocial_dispatch(int64_t port, struct ArrayView *view);

int32_t subsocial_shutdown(void);

// a no-op function that forces xcode to link to our lib.
// ## Safety
// lol
void subsocial_link_me_plz(void);
