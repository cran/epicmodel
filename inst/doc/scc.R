## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(epicmodel)

## ----include=FALSE------------------------------------------------------------
steplist_checked <- steplist_party %>% remove_na() %>% remove_segment("d4") %>% check_steplist()
scc_model <- steplist_checked %>% create_scc()

## ----eval = FALSE-------------------------------------------------------------
# steplist_checked <- steplist_party %>% remove_na() %>% remove_segment("d4") %>% check_steplist()
# scc_model <- steplist_checked %>% create_scc()
# scc_model

## ----echo=FALSE---------------------------------------------------------------
scc_model

## ----eval = FALSE-------------------------------------------------------------
# plot(scc_party, remove_sc = 3)

## -----------------------------------------------------------------------------
show_steps(scc_model)

## -----------------------------------------------------------------------------
scc_model %>% sc_contain_steps("IFa5d1IFNOTa7d3e3THENa5d5")

## -----------------------------------------------------------------------------
scc_model %>% scc_cause_sets(output = "desc")

## -----------------------------------------------------------------------------
scc_model %>% are_sufficient(c("THENa5d1","THENa4d1","THENa6d1","THENa7d3e4"), type = "status")
scc_model %>% are_sufficient(c("THENa5d1","THENa4d1","THENa6d1","THENa7d3e4"), type = "binary")

## -----------------------------------------------------------------------------
scc_model %>% necessary_causes()

