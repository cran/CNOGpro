\name{store}
\alias{store}
\title{
Store the results of a \code{CNOGpro} copy number experiment
}
\description{
Prints the relevant data to a text file. By default, the entire gene table
including copy numbers inferred by bootstrapping and HMM is printed. However,
using the flag outputEntireTable=F will make the function print only the HMM
breakpoints with associated most probable states.
}
\usage{
store(experiment, outputEntireTable = T, path = "./")
}

\arguments{
  \item{experiment}{
An object of class \code{CNOGpro}.
}
  \item{outputEntireTable}{
A logical flag indicating if the entire \code{genes} attribute table is to
be printed. If set to FALSE, only the HMM table of breakpoints and states will
be printed.
}
  \item{path}{
The path to be written to.
}
}
\details{
Outputs data to a tab-separated text-file. User must have permission to print 
to the output directory.
}

\author{
Ola Brynildsrud
}

\examples{
data(carsonella)
\dontrun{store(carsonella, path="./")}
}