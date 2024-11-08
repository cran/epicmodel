## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(epicmodel)

## ----eval = FALSE-------------------------------------------------------------
#  launch_steplist_creator()

## -----------------------------------------------------------------------------
steplist <- steplist_party

## ----include=FALSE------------------------------------------------------------
steplist_checked <- check_steplist(steplist)

## ----eval = FALSE-------------------------------------------------------------
#  steplist_checked <- check_steplist(steplist)
#  #> ── Checking epicmodel_steplist steplist ──────────────────────────────────────────────────────────────────────────────────────────────────────────
#  #> ✔ Checking WHAT IDs was successful.
#  #> ✔ Checking DOES IDs was successful.
#  #> ✔ Checking WHERE IDs was successful.
#  #> ✔ Checking Module IDs was successful.
#  #> ✔ Checking ICC IDs was successful.
#  #> ✔ Checking WHAT keywords was successful.
#  #> ✔ Checking DOES keywords was successful.
#  #> ✔ Checking WHERE keywords was successful.
#  #> ✔ Checking Module keywords was successful.
#  #> ✔ Checking Modules was successful.
#  #> ✖ Checking ICC entries failed!
#  #> Caused by error in `check_steps_in_icc()`:
#  #> ! All IDs in data.frame `icc`, i.e. in variables `id1` and `id2`, must be in `id_step` of data.frame `step`!
#  #> ℹ Data.frame `icc` contains 4 elements with two step IDs each.
#  #> ✖ In total, 1 ID is not in data.frame `step`: NA
#  #> ℹ If only `NA` is not in data.frame `step`, use `steplist <- remove_na(steplist)`.
#  #> ✔ Checking WHAT segments was successful.
#  #> ! Checking DOES segments resulted in warnings!
#  #> Caused by warning:
#  #> ! Not all DOES segments have been used in data.frame `step`!
#  #> ℹ Data.frame `does` contains 6 elements.
#  #> ℹ In total, 1 DOES segment is not being used in data.frame `step`: d4
#  #> ✔ Checking WHERE segments was successful.
#  #> ! Checking references resulted in warnings!
#  #> Caused by warning:
#  #> ! For some steps no references have been provided!
#  #> ℹ In total, 16 steps have no references.
#  #> ✔ Checking start/end steps was successful.
#  #> ✔ Checking THEN statements was successful.
#  #> ✔ Checking THEN/IF/IFNOT equality was successful.
#  #> ✔ Checking outcome definitions was successful.
#  #> ── Summary ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#  #> ✖ Checking failed! Please correct errors and repeat.

## -----------------------------------------------------------------------------
print(steplist_checked)

## -----------------------------------------------------------------------------
steplist <- remove_na(steplist)
steplist <- remove_segment(steplist, "d4")

## ----include=FALSE------------------------------------------------------------
steplist_checked <- check_steplist(steplist)

## ----eval = FALSE-------------------------------------------------------------
#  steplist_checked <- check_steplist(steplist)
#  # ── Checking epicmodel_steplist steplist ───────────────────────────────────────────────────────────────────────────────────────────────────────────
#  # ✔ Checking WHAT IDs was successful.
#  # ✔ Checking DOES IDs was successful.
#  # ✔ Checking WHERE IDs was successful.
#  # ✔ Checking Module IDs was successful.
#  # ✔ Checking ICC IDs was successful.
#  # ✔ Checking WHAT keywords was successful.
#  # ✔ Checking DOES keywords was successful.
#  # ✔ Checking WHERE keywords was successful.
#  # ✔ Checking Module keywords was successful.
#  # ✔ Checking Modules was successful.
#  # ✔ Checking ICC entries was successful.
#  # ✔ Checking WHAT segments was successful.
#  # ✔ Checking DOES segments was successful.
#  # ✔ Checking WHERE segments was successful.
#  # ! Checking references resulted in warnings!
#  # Caused by warning:
#  # ! For some steps no references have been provided!
#  # ℹ In total, 16 steps have no references.
#  # ✔ Checking start/end steps was successful.
#  # ✔ Checking THEN statements was successful.
#  # ✔ Checking THEN/IF/IFNOT equality was successful.
#  # ✔ Checking outcome definitions was successful.
#  # ── Summary ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#  # ✔ Checking successful!

## -----------------------------------------------------------------------------
print(steplist_checked)

## -----------------------------------------------------------------------------
steplist_checked <- remove_all_modules(steplist_checked)

## -----------------------------------------------------------------------------
print(steplist_checked)

