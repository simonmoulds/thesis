## ----chap1, child='sm_thesis_intro.Rnw'----------------------------------

## ----echo=FALSE, cache=FALSE---------------------------------------------
set_parent('sm_thesis.Rnw')


## ----chap2, child='sm_thesis_lulcc.Rnw'----------------------------------

## ----echo=FALSE, cache=FALSE---------------------------------------------
set_parent('sm_thesis.Rnw')


## ----chap3, child='sm_thesis_india_lulcc.Rnw'----------------------------

## ----echo=FALSE, cache=FALSE---------------------------------------------
set_parent('sm_thesis.Rnw')


## ----chap4, child='sm_thesis_indiam.Rnw'---------------------------------

## ----echo=FALSE, cache=FALSE---------------------------------------------
set_parent('sm_thesis.Rnw')


## ----chap5, child='sm_thesis_monsoon.Rnw'--------------------------------

## ----echo=FALSE, cache=FALSE---------------------------------------------
set_parent('sm_thesis.Rnw')


## ----chap6, child='sm_thesis_rhydro.Rnw'---------------------------------

## ----echo=FALSE, cache=FALSE---------------------------------------------
set_parent('sm_thesis.Rnw')

## ----echo=FALSE----------------------------------------------------------
devtools::load_all("/home/simon/projects/r_hydro/Hydro2")

## ----echo=TRUE,results="hide"--------------------------------------------
library(RObsDat)
library(RSQLite)
library(SSOAP)
con <- dbConnect(dbDriver("SQLite"), dbname = "RODM.db")
sqhandler <- new("odm1_1Ver", con=con)
options(odm.handler=sqhandler)
updateCV()

## ----echo=TRUE-----------------------------------------------------------
getMetadata("VariableName", Term="Streamflow")

## ----echo=TRUE-----------------------------------------------------------
addCV("VariableName", term="test", definition="test entry")

## ----echo=TRUE-----------------------------------------------------------
pts <- SpatialPoints(data.frame(x=1:5, y=1:5))
t <- seq(as.POSIXct("2000-01-01", tz="GMT"), by="1 hour", length.out=24)
dat <- data.frame(runif(n=120))
x <- HydroSTF(STFDF(sp=pts, time=t, data=dat), 
              metadata=list(VariableName="Discharge",
                            VariableUnitsID=52,
                            ValueType="Field Observation",
                            DataType="Cumulative"))
x


## ----chap7, child='sm_thesis_conclusion.Rnw'-----------------------------

## ----echo=FALSE, cache=FALSE---------------------------------------------
set_parent('sm_thesis.Rnw')


