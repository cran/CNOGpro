\name{normalizeGC}
\alias{normalizeGC}
\title{
Normalization of read count data by GC content
}
\description{
Manipulates count values from windows of comparatively high or 
low GC content so as to bring the counts more in line with those 
from median GC-content windows.
}
\usage{
normalizeGC(experiment)
}
\arguments{
  \item{experiment}{
\code{experiment} An object of class \code{CNOGpro}.
}
}
\details{
Implements the Yoon et al. (2009) normalization scheme.
}
\value{
An object of class \code{CNOGpro}, containing a numeric vector 
\code{CorrReadsprWindow}.
}
\references{
Yoon,S. et al. (2009) Sensitive and accurate detection of copy
number variants using read depth of coverage. \emph{Genome Research},
\bold{19}, 1586--1592.
}
\author{
Ola Brynildsrud
}
\examples{
data(carsonella)
carsonella_normalized <- normalizeGC(carsonella)
plotCNOGpro(carsonella_normalized)
}