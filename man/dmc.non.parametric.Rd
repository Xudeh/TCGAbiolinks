% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methylation.R
\name{dmc.non.parametric}
\alias{dmc.non.parametric}
\title{Perform non-parametrix wilcoxon test}
\usage{
dmc.non.parametric(
  matrix,
  idx1 = NULL,
  idx2 = NULL,
  paired = FALSE,
  adj.method = "BH",
  alternative = "two.sided",
  cores = 1
)
}
\arguments{
\item{matrix}{A matrix}

\item{idx1}{Index columns group1}

\item{idx2}{Index columns group2}

\item{paired}{Do a paired wilcoxon test? Default: True}

\item{adj.method}{P-value adjustment method. Default:"BH" Benjamini-Hochberg}

\item{alternative}{wilcoxon test alternative}

\item{cores}{Number of cores to be used}
}
\value{
Data frame with p-values and diff mean
}
\description{
Perform non-parametrix wilcoxon test
}
\examples{
 nrows <- 200; ncols <- 20
 counts <- matrix(
   runif(nrows * ncols, 1, 1e4), nrows,
   dimnames = list(paste0("cg",1:200),paste0("S",1:20))
 )
 TCGAbiolinks:::dmc.non.parametric(counts,1:10,11:20)
}
