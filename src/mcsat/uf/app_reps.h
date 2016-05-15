/*
 * The Yices SMT Solver. Copyright 2014 SRI International.
 *
 * This program may only be used subject to the noncommercial end user
 * license agreement which is downloadable along with this program.
 */

#ifndef APP_REPS_H_
#define APP_REPS_H_

#include <stdint.h>
#include <stdbool.h>

#include "mcsat/variable_db.h"
#include "mcsat/trail.h"
#include "mcsat/utils/scope_holder.h"

typedef struct app_rep_s {
  uint32_t hash;
  variable_t app_term;
} app_rep_t;

/**
 * Table holding application representatives: keep one representative for all
 * f(x) wit same f and trail values of x.
 */
typedef struct app_reps_s {
  const mcsat_trail_t* trail; // Trail, to get values
  variable_db_t* var_db; // The variable database
  term_table_t* terms; // Terms, to get the function type
  // Internals
  app_rep_t *records;
  uint32_t size;
  uint32_t nelems;
  uint32_t ndeleted;
  uint32_t resize_threshold;
  uint32_t cleanup_threshold;
  // Push/pop data
  ivector_t reps;
  ivector_t hashes;
  scope_holder_t scope;
} app_reps_t;

/* Construct: empty table of size n (n must be a power of 2). Use 0 for default size. */
void app_reps_construct(app_reps_t *table, uint32_t n, variable_db_t* var_db, const mcsat_trail_t* trail, term_table_t* terms);

/* Destruct */
void app_reps_destruct(app_reps_t *table);

/** Clear the reps table */
void app_reps_clear(app_reps_t *table);

/**
 * Set f_app to be the representative, or return the current representative.
 * If f_app is not fully assigned, then no representative is set and
 * variable_null is returned.
 */
variable_t app_reps_get_rep(app_reps_t *table, variable_t f_app);

/* Push scope */
void app_reps_push(app_reps_t *table);

/* Pop scope */
void app_reps_pop(app_reps_t *table);

/* Print it */
void app_reps_print(const app_reps_t *table, FILE *out);


#endif
