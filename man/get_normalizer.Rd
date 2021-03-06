% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/normalize_mat.R
\name{get_normalizer}
\alias{get_normalizer}
\title{Generate the Normalizer Values for each Sample}
\usage{
get_normalizer(mat, genes.norm.factor = c("ACTB", "CLTC", "RPLP0"))
}
\arguments{
\item{mat}{The expression matrix}

\item{genes.norm.factor}{Character vector containing the housekeeper genes
to use to calculate the normalizer}
}
\value{
A numeric vector with the samples as names and the normalizer
  as values
}
\description{
\code{get_normalizer} returns the normalizer values for each sample. The
normalizer value is based on the geometric mean of the housekeeper genes
ACTB, CLTC, and RPLP0.
}
\details{
You can change the housekeeper genes by specifying the genes.norm.factor
parameter.
}
\examples{
normalizer <- get_normalizer(mat)
}

