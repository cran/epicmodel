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
steplist <- steplist_rain

## -----------------------------------------------------------------------------
print(steplist)

## -----------------------------------------------------------------------------
steplist_checked <- check_steplist(steplist)

## -----------------------------------------------------------------------------
print(steplist_checked)

## -----------------------------------------------------------------------------
summary(steplist_checked)

## ----eval = FALSE-------------------------------------------------------------
#  plot(steplist_checked)

## ----out.width = '70%', echo = FALSE------------------------------------------
knitr::include_graphics("img/epicmodel_plot_steplist_checked.png")

## ----echo = FALSE-------------------------------------------------------------
out <- plot(steplist_checked)
out$Legend

## -----------------------------------------------------------------------------
scc_model <- create_scc(steplist_checked)

## -----------------------------------------------------------------------------
print(scc_model)

## ----eval = FALSE-------------------------------------------------------------
#  plot(scc_model, unknown = FALSE)

## ----out.width = '70%', echo = FALSE------------------------------------------
knitr::include_graphics("img/epicmodel_plot_scc.png")

## -----------------------------------------------------------------------------
effect_size(scc_model)

## ----eval = FALSE-------------------------------------------------------------
#  mech <- mechanism(scc_model)
#  print(mech)
#  plot(mech)

## ----echo = FALSE-------------------------------------------------------------
mech <- mechanism(scc_model)
print(mech)

## ----out.width = '70%', echo = FALSE------------------------------------------
knitr::include_graphics("img/epicmodel_plot_mechanism1.png")
knitr::include_graphics("img/epicmodel_plot_mechanism2.png")

## -----------------------------------------------------------------------------
summary(steplist_checked)

## -----------------------------------------------------------------------------
intervene(scc_model, causes = "all", intervention = "THENd4e1")

## -----------------------------------------------------------------------------
intervene(scc_model, causes = c("THENa1","THENa5","THENd2a3"), intervention = "all")

## -----------------------------------------------------------------------------
intervene(scc_model, causes = c("IFNOTd6a6THENd5a6","THENa5","THENa1"), intervention = c("THENd6a6","THENd4e1"))

## -----------------------------------------------------------------------------
dag <- scc_to_dag(scc_model)
dag$dag

## ----eval = FALSE-------------------------------------------------------------
#  plot_dag(dag$dag)

## ----out.width = '70%', echo = FALSE------------------------------------------
knitr::include_graphics("img/epicmodel_plot_dag.png")

