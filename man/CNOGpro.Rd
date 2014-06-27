\name{CNOGpro}
\alias{CNOGpro}
\title{Set up a new CNOGpro experiment}
\description{
This function initializes the CNOGpro experiment. 
}
\usage{
CNOGpro(hitsfile, gbkfile, windowlength = 100, name = 
"Default organism")
}
\arguments{
  \item{hitsfile}{
Path to a text file containing two columns: The first column
is a chromosome identifier, and the second column is the
leftmost coordinate (in the reference organism) of a mapped read.
Each row represents one single read.
}
  \item{gbkfile}{
The GenBank Flat Format file of the organism used as a reference
in the resequencing study. Must contain DNA sequence, not just
annotations. Multi-chromosomal files are not currently supported,
and should be parsed separately.
}
  \item{windowlength}{
Integer length of the sliding window which will be used when
counting read density. 
}
  \item{name}{
(Optional) A name of the organism or copy number experiment.
}
}
\details{
The function accepts a minimum input of the GenBank file, but will
not be able to do any copy number analysis in this mode. As such,
the primary use of this modes when the user just wants to print a 
table of genetic elements.
\cr\cr
The hitsfile can be constructed from a SAMtools binary alignment/
map (.bam) file by entering the following at the shell command line: \cr
\code{samtools view infile.bam | perl -lane 'print \"$F[2]\t$F[3]\"' > out.hits}
}
\value{
An object of class \code{CNOGpro}, which can be used in further
CNV analysis. Essentially a list containing the following elements:
\item{Name}{The name of the organism or project, as set by this method.}
\item{windowlength}{The length of the sliding window when counting reads}
\item{accession}{The accession number of the chromosome, from the provided
GenBank file}
\item{genes}{A table of genetic elements in the chromosome, including
intergenic regions. The table will also hold copy numbers as inferred
from the \code{runHMM} and \code{runBootstrap} methods.}
\item{chrlength}{The length of the chromosome}
\item{GCperwindow}{The GC-percentage, calculated in sliding windows.}
\item{is_GC_normalized}{logical indicating whether data has been normalized
or not}
\item{ReadsprWindow}{The (raw) read counts in sliding windows}
\item{CorrReadsprWindow}{The read counts in sliding windows, corrected
for GC bias. Acquired from the \code{normalizeGC} method.}
\item{HMMtable}{The data frame of breakpoints and states inferred from the
\code{runHMM} method.}
}
\references{
Manuscript not yet published.
}
\author{
Ola Brynildsrud (ola.brynildsrud@nmbu.no)
}

\seealso{\code{\link{normalizeGC}}, \code{\link{runBootstrap}}, \code{\link{runHMM}},
\code{\link{store}}}
\examples{
carsonella <- CNOGpro(hitsfile=system.file("extdata/carsonellahits.tab", package="CNOGpro"),
gbkfile=system.file("extdata/CP003467.gbk",package="CNOGpro"), windowlength=100,
name="Artificial Carsonella ruddii data")
plotCNOGpro(carsonella)
printCNOGpro(carsonella)

}

