\name{printCNOGpro}
\alias{printCNOGpro}
\title{
Prints the results of a \code{CNOGpro} experiment
}
\description{
Results are printed to stout. The default behavior is to print
the HMMtable. If this does not exist, the function will attempt
to print the gene table (with copy numbers.)
}
\usage{
printCNOGpro(experiment)
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
carsonella_bootstrapped <- runBootstrap(carsonella_normalized, quantiles=c(0.01,0.99))
printCNOGpro(carsonella_bootstrapped)
}