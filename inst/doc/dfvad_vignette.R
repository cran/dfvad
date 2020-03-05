## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include=FALSE-----------------------------------------------------
library(dfvad)

## -----------------------------------------------------------------------------
head(mining)

## -----------------------------------------------------------------------------
head(sector)

## -----------------------------------------------------------------------------
# Use the built-in dataset "mining"
table1 <- value_decom(c("h2","x2"), c("w2","u2"), "y2", "p2", "year", mining)[[1]]
head(table1)
table2 <- value_decom(c("h2","x2"), c("w2","u2"), "y2", "p2", "year", mining)[[2]]
head(table2)

## -----------------------------------------------------------------------------
# Use the built-in dataset "sector"
table1 <- t_weight("y", "p", "industry", "year", "alpha", "beta", "gamma", "epsilon", "tau", sector)[[1]]
head(table1)
table2 <- t_weight("y", "p", "industry", "year", "alpha", "beta", "gamma", "epsilon", "tau", sector)[[2]]
head(table2)

