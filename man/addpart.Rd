\name{addpart}
\alias{addpart}
\title{Calculates additive partitioning of diversity}
\description{
Returns or writes to a file measures of the additive partitioning of diversity according to Lande (1996).}
\usage{

addpart(x = NULL, file = 'rawcounts.txt', outfile = NULL)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{an object of class strat.column or a counts matrix with species in rows and sites in columns}
  \item{file}{ignored unless x is NULL; otherwise a file from which to read the counts matrix. Must be in tab-delimited text format with column labels in the first, header row, which must be one entry shorter than the following data rows. Row labels in the first column. [check this] }
  \item{outfile}{a file to which to write the output. If NULL (the default) writes to standard output.}
}
\details{
  Based on an Excel spreadsheet set up by Scott Wing.
}

\value{

returns a data frame list with components \code{$counttable,} \code{$Sstats,} and \code{$Saddpart}.

\code{$counttable} is a data frame giving the original count matrix with row and column marginals added to the right and bottom.

\code{$Sstats} is a data frame giving species diversity (Sobs), Simpson's Diversity Index (SimpsonsD = 1 - sum of squares of proportional counts), and Hurlbert's PIE (PIE = SimpsonsD * (n/(n-1)), where n = total number of individuals found at a site) for each site.

\code{$Saddpart} is a data frame giving alpha and beta partitions of divisersity under three different weighting scenarios: with sites weighted by n = total number of individuals found at a site, natural log of n (ln n), and assuming that all sites have equal number of individuals.

}
\references{

Hurlbert (1971)

Lande, R. (1996) `Statistics and Partitioning of Species Diversity, and Similarity among Multiple Communities'. Oikos. 76(1):5--13.

}

\author{Scott Wing, Walton Green}

\note{Currently no other notes.} 

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{plot.strat.column}}, \code{\link{stratigraph}}}

\examples{

#none yet

}

\keyword{misc}