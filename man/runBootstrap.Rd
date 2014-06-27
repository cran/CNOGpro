\name{runBootstrap}
\alias{runBootstrap}
\title{
Gene copy numbers with confidence intervals through bootstrapping
}
\description{
For each genetic element in the gene table of a \code{CNOGpro} object,
sample repeatedly from the read observations associated with that gene
while replacing the observations.
}
\usage{
runBootstrap(experiment, replicates = 1000, quantiles = c(0.025, 0.975))
}
\arguments{
  \item{experiment}{
An object of class \code{CNOGpro}
}
  \item{replicates}{
The (integer) number of resampling experiments per genetic element. 
(That is, the number of bootstrap samples.)
}
  \item{quantiles}{
The quantiles of the distribution of mean copy numbers for which the
mean is returned. (Given as c(lower, upper))
}
}
\details{
Implements the theory that since the read counts from each genetic element
come from a (overdispersed) Poisson distribution with rate parameter 
lambda (=mean), this lambda can be inferred by simply taking the mean of
the observations from that genetic element. A confidence interval is then
constructed around the mean by random resampling with replacement. For each
replicate and genetic element, the same number of samples is taken as there
are read count observations associated with that particular genetic element.
The observations of means are then sorted and the given lower and upper
quantiles are returned.

}
\value{
An object of class \code{CNOGpro}, with proposed copy number (floating point)
and the associated confidence interval for each genetic element in the table
of genes.
}

\author{
Ola Brynildsrud
}
\examples{
data(carsonella)
carsonella_normalized <- normalizeGC(carsonella)
carsonella_bootstrapped <- runBootstrap(carsonella, replicates=500)
printCNOGpro(carsonella_bootstrapped)
}