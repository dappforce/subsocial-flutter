#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

// Immutable View of Shared Buffer.
typedef struct {
  uint8_t *buf;
  uintptr_t len;
} SharedBuffer;

int32_t subsocial_init_client(int64_t port);

int32_t subsocial_dispatch(int64_t port, SharedBuffer *ptr);

// a no-op function that forces xcode to link to our lib.
// ## Safety
// lol
void subsocial_link_me_plz(void);
