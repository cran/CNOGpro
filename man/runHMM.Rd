\name{runHMM}
\alias{runHMM}
\title{
Copy number variation inference through a Hidden Markov Model
}
\description{
Implements a Viterbi algorithm for assigning most likely copy number to
each chromosomal position in the chromosome.
}
\usage{
runHMM(experiment, nstates = 5, changeprob = 1e-04, includeZeroState = T,
	errorRate = 0.001)
}
\arguments{
  \item{experiment}{
An object of class \code{CNOGpro}
}
  \item{nstates}{
The possible number of states, not including state 0. The returned copy
numbers will be in the range {0, 1, 2, ... , nstates}
}
  \item{changeprob}{
The probability of transitioning from one state to another, used to set
up the transition matrix. 
}
  \item{includeZeroState}{
Whether or not to allow the copy number state 0 in the results
}
  \item{errorRate}{
The presumed fraction of erroneously mapped reads. Only needed when
includeZeroState is set to TRUE. This numbers is used for setting the
probability distribution of each observation in copy number state 0.
}
}
\details{
For each read count observation the algorithm computes the probability
of that observation in each possible state. The minimum path through the
trellis is then calculated at the end. 
}
\value{
An object of class \code{CNOGpro}, with a HMMtable listing the breakpoints
of different copy number states. The most probable states of each genetic
element are also listed in the \code{genes} table of the object.
}

\author{
Ola Brynildsrud
}
\examples{
data(carsonella)
carsonella_normalized <- normalizeGC(carsonella)
carsonella_hmm <- runHMM(carsonella_normalized)
plotCNOGpro(carsonella_hmm)
}
