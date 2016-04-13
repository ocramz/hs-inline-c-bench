#include "test.h"

/* void queue_init(qut const q, uint32_t *const buf, const size_t size) { */
/*   q->size = size; */
/*   q->elements = buf; */
/*   /\* q->tail = q->head = &q->elements[0]; *\/ */
/* } */

/* void queue_clean(qut q) { */
/*   if (q){ */
/*     free(q); */
/*     q = NULL;} */
/* } */


void queue_init(queue_t* const q, uint32_t *const buf, const size_t size) {
  q->size = size;
  q->elements = buf;
  /* q->tail = q->head = &q->elements[0]; */
}

void queue_clean(queue_t* q) {
  if (q){
    free(q);
    q = NULL;}
}
