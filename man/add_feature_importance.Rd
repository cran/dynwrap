% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrap_add_feature_importance.R
\name{add_feature_importance}
\alias{add_feature_importance}
\alias{is_wrapper_with_feature_importance}
\title{Add a feature importance to a dataset}
\usage{
add_feature_importance(dataset, feature_importance, ...)

is_wrapper_with_feature_importance(dataset)
}
\arguments{
\item{dataset}{A dataset created by \code{\link[=wrap_data]{wrap_data()}} or \code{\link[=wrap_expression]{wrap_expression()}}}

\item{feature_importance}{The impotances of the features, can be a named vector or a dataframe with columns \emph{feature_id} and \emph{importance}}

\item{...}{Extra information to be stored in the dataset}
}
\value{
A dynwrap object with the feature importance added.
}
\description{
Add a feature importance to a dataset
}
\examples{
dataset <- example_dataset

feature_importance <- runif(nrow(dataset$feature_info))
names(feature_importance) <- dataset$feature_info$feature_id

dataset <- add_feature_importance(dataset, feature_importance)
head(dataset$feature_importance)

}
\keyword{adapt_trajectory}
