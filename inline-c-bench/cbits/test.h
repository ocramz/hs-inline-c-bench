#ifndef TEST_H
#define TEST_H

#include <stdlib.h>

typedef struct queue_s {
  uint32_t *elements;
  size_t size;
} queue_t;

/* typedef struct queue_t* qut; /\*synonym for ptr to queue_t*\/ */

/* void queue_init(qut const q, uint32_t* const buf, const size_t size); */
/* /\* bool queue_put(qut const q); *\/ */

/* void queue_clean(qut q); */



void queue_init(queue_t* const q, uint32_t* const buf, const size_t size);
/* bool queue_put(qut const q); */

void queue_fin(queue_t* q);


#endif
