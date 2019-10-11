## ---- include = FALSE----------------------------------------------------
dir <- tempdir()
knitr::opts_knit$set(root.dir = normalizePath(tempdir(), winslash = '/'))

NOT_CRAN <- identical(tolower(Sys.getenv("NOT_CRAN")), "true") # don't run some chunks on CRAN

knitr::opts_knit$get("root.dir")

## ----setup, message = FALSE----------------------------------------------
library(dynwrap)
library(dplyr)

## ---- echo = FALSE-------------------------------------------------------
definition_string <- paste0(readLines(system.file("examples/docker/definition.yml", package = "dynwrap")), collapse = "\n")

readr::write_file(definition_string, "definition.yml")
knitr::asis_output(paste0("```yaml\n", definition_string, "\n```"))

## ---- echo = FALSE-------------------------------------------------------
run_py_script <- paste0(readLines(system.file("examples/docker/run.py", package = "dynwrap")), collapse = "\n")

readr::write_file(run_py_script, "run.py")
knitr::asis_output(paste0("```python\n", run_py_script, "\n```"))

## ---- echo = FALSE, warning = FALSE--------------------------------------
docker_file <- paste0(readLines(system.file("examples/docker/Dockerfile", package = "dynwrap")), collapse = "\n")

readr::write_file(docker_file, "Dockerfile")
knitr::asis_output(paste0("```Dockerfile\n", docker_file, "\n```"))

## ---- eval=NOT_CRAN, error=TRUE------------------------------------------
#  method <- create_ti_method_container("my_ti_method")
#  dataset <- dynwrap::example_dataset
#  trajectory <- infer_trajectory(dataset, method(), verbose = TRUE)

## ---- eval=NOT_CRAN, error=TRUE------------------------------------------
#  # install dynplot to plot the output
#  if (requireNamespace("dynplot", quietly = TRUE)) {
#    dynplot::plot_dimred(trajectory, color_cells = "pseudotime" , expression_source = as.matrix(dataset$expression))
#  }

## ---- echo = FALSE-------------------------------------------------------
example_script <- "#!/usr/bin/env Rscript

dataset <- dynwrap::example_dataset

file <- commandArgs(trailingOnly = TRUE)[[1]]
dynutils::write_h5(dataset, file)
"

readr::write_file(example_script, "example.sh")
knitr::asis_output(paste0("```R\n", example_script, "\n```"))

## ---- eval=NOT_CRAN, error=TRUE------------------------------------------
#  dataset <- dynutils::read_h5("example.h5")
#  trajectory <- infer_trajectory(dataset, method())

