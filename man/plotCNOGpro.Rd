\name{plotCNOGpro}
\alias{plotCNOGpro}
\title{
Plots the results of a \code{CNOGpro} experiment
}
\description{
Plots the coverage in a number of ways: Coverage along the chromosome,
density plots of coverage for each individual copy number state (as 
assigned by the runHMMmethod) and coverage by GC percentage of the reads,
before and after normalization.
}
\usage{
plotCNOGpro(experiment)
}
\arguments{
  \item{experiment}{
An object of class \code{CNOGpro}
}
}

\author{
Ola Brynildsrud
}
\seealso{
\code{\link{CNOGpro}}
}
\examples{
data(carsonella)
carsonella_normalized <- normalizeGC(carsonella)
carsonella_hmm <- runHMM(carsonella_normalized, nstates=5)
plotCNOGpro(carsonella_hmm)
}