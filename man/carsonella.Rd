\name{carsonella}
\docType{data}
\alias{carsonella}
\title{CNV experiment of C. Carsonella ruddy (artificial data)}
\description{
This is an example object of class \code{CNOGpro}, as created
by the \code{CNOGpro} method. The input to this file was a GenBank
flat file (Acc. nr: CP003467), and a table of best-hit read locations
from a resequencing experiment. The data were created by artificially
duplicating one gene and removing another from the chromosome, and is
meant for illustration purposes only. The reads were created by the 
ART sequencing simulator by Huang et al. (2011)
}
\usage{data(carsonella)}
\format{An object of class \code{CNOGpro}}
\source{Artificial data, produced by the author}
\references{
Huang,W. et al. (2011) ART: a next-generation sequencing read simulator.
\emph{Bioinformatics}, \bold{28}, 593--594. \cr
Nakabachi,A. et al. (2013) Defensive bacteriome symbiont with a drastically
reduced genome. \emph{Curr. Biol.}, \bold{23}, 1478 -- 1484
}
\examples{
data(carsonella)
summaryCNOGpro(carsonella)
plotCNOGpro(carsonella)
}
\keyword{datasets}