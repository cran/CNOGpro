\name{CNOGpro-package}
\alias{CNOGpro-package}
\docType{package}
\title{
CNOGpro - Copy Numbers of Genes in Prokaryotes
}
\description{
Detects copy number variation in resequencing experiments
}
\details{
\tabular{ll}{
Package: \tab CNOGpro\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-06-27\cr
License: \tab GPL-2\cr
}
After mapping the reads from a resequencing experiment to a
reference organism, \code{CNOGpro} allows the user to count
coverage of the reference in sliding windows, normalize the
counts based on observed GC-bias, and run two main models for
inferring copy number variation and breakpoints - One approach
using a Hidden Markov Model, and one using bootstrapping. The
latter will also produce confidence intervals of the desired
range around the observed copy number.
}
\author{
Ola Brynildsrud
Maintainer: Ola Brynildsrud <ola.brynildsrud@nmbu.no>
}
\references{
Manuscript forthcoming...
}
\keyword{ package }