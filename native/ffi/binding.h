#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

// Immutable View of Shared Buffer.
typedef struct {
  uint8_t *buf;
  uintptr_t len;
} SharedBuffer;

void subsoical_init_client(void);

SharedBuffer *subsocial_dispatch(SharedBuffer *ptr);

void subsocial_release_shared_buffer(SharedBuffer *ptr);

// a no-op function that forces xcode to link to our lib.
// ## Safety
// lol
void subsocial_link_me_plz(void);
