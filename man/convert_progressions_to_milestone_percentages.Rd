% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_progressions_to_milestone_percentages.R
\name{convert_progressions_to_milestone_percentages}
\alias{convert_progressions_to_milestone_percentages}
\title{Conversion between milestone percentages and progressions}
\usage{
convert_progressions_to_milestone_percentages(
  cell_ids,
  milestone_ids,
  milestone_network,
  progressions
)
}
\arguments{
\item{cell_ids}{The identifiers of the cells.}

\item{milestone_ids}{The ids of the milestones in the trajectory. Type: Character vector.}

\item{milestone_network}{The network of the milestones.
Type: Data frame(from = character, to = character, length = numeric, directed = logical).}

\item{progressions}{Specifies the progression of a cell along a transition in the milestone_network.
Type: Data frame(cell_id = character, from = character, to = character, percentage = numeric).}
}
\value{
A data frame with columns \code{cell_id}, \code{milestone_id}, and \code{percentage}.
}
\description{
Conversion between milestone percentages and progressions
}
\examples{
milestone_percentages <- convert_progressions_to_milestone_percentages(
  cell_ids = example_trajectory$cell_ids,
  milestone_ids = example_trajectory$milestone_ids,
  milestone_network = example_trajectory$milestone_network,
  progressions = example_trajectory$progressions
)
head(milestone_percentages)

}
\seealso{
\code{\link[=add_trajectory]{add_trajectory()}}, \code{\link[=convert_milestone_percentages_to_progressions]{convert_milestone_percentages_to_progressions()}}
}
