\name{fill.ranges}
\alias{fill.ranges}
\title{Fills in missing values in the ranges of taxa}
\description{
Given a matrix or object of type \code{strat.column} with missing values (coded as NA), fill.ranges replaces the missing values that are between first and last occurrences of each taxon (column) with zeros.}
\usage{

fill.ranges(x, out = 'internals', ...)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{an object of class strat.column or a numerical matrix}
  \item{out}{'internals' returns an index to the counts that are internal to ranges, 'min' replaces these internals with the minimum non-zero counts in each taxon, 'pa' returns a presence/absence matrix with ranges filled}
  \item{...}{not currently used.}
}
\details{
  Any missing values (NAs) are converted to zeros before filling ranges.
}

\value{
\code{fill ranges} returns the type of output that it was given as input to x: either a strat.column or a numeric matrix.
}

%\references{}

\author{Walton Green}

%\note{} 

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{plot.strat.column}}, \code{\link{stratigraph}}}

\examples{

##Need an example of data with missing values

}

\keyword{manip}