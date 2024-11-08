## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(epicmodel)
library(magrittr)

## ----include=FALSE------------------------------------------------------------
steplist_checked <- steplist_party %>% remove_na() %>% remove_segment("d4") %>% check_steplist()
scc_model <- steplist_checked %>% create_scc()

## ----eval = FALSE-------------------------------------------------------------
#  steplist_checked <- steplist_party %>% remove_na() %>% remove_segment("d4") %>% check_steplist()
#  scc_model <- steplist_checked %>% create_scc()
#  scc_model

## ----echo=FALSE---------------------------------------------------------------
scc_model

