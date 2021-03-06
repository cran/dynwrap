% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_average.R
\name{calculate_average_by_group}
\alias{calculate_average_by_group}
\title{Calculate average values of a matrix}
\usage{
calculate_average_by_group(x, cell_grouping)
}
\arguments{
\item{x}{A matrix. One row for every cell; one column for every feature. The rows must be named.}

\item{cell_grouping}{A data frame denoting the grouping of the cells.
Format: \code{tibble(cell_id = character(), group_id = character())}.}
}
\value{
A matrix containing for each feature (column) the average
}
\description{
\code{calculate_average_by_group} will calculate an average value per group, given a matrix with cells in the rows and some features in the columns (e.g. expression matrix)
}
\examples{
calculate_average_by_group(
  x = example_trajectory$expression,
  cell_grouping = example_trajectory$prior_information$groups_id
)

}
\keyword{derive_trajectory}
