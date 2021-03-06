% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/project_waypoints.R
\name{project_waypoints}
\alias{project_waypoints}
\title{Project waypoints of a trajectory (e.g. milestones) into a space defined by cells (e.g. expression or a dimensionality reduction)}
\usage{
project_waypoints(
  trajectory,
  space,
  waypoints = select_waypoints(trajectory),
  trajectory_projection_sd = sum(trajectory$milestone_network$length) * 0.05
)
}
\arguments{
\item{trajectory}{The trajectory as created by \code{\link[=infer_trajectory]{infer_trajectory()}} or \code{\link[=add_trajectory]{add_trajectory()}}}

\item{space}{A matrix with cells in rows and different dimensions in the columns. This is typically an expression matrix or a dimensionality reduction}

\item{waypoints}{A set of waypoints, which can be created by \code{\link[=add_waypoints]{select_waypoints()}}. It is a list containing:
\itemize{
\item \code{waypoints}: a dataframe containing in the very least the waypoint_id
\item \code{milestone_percentages}: the positions of waypoints withing the trajectory
\item \code{geodesic_distances}: matrix with precalculated geodesic distances between waypoints (rows) and cells (columns), optional
}}

\item{trajectory_projection_sd}{The standard deviation of the gaussian kernel}
}
\value{
A matrix in which the waypoints (rows) were projected into a new space defined by the same number of dimensions (columns) as in the \code{space} argument
}
\description{
This will first calculate the geodesic distance of each cell to the waypoint. This distance is used as a weight
}
