\name{a.datums}
\alias{a.datums}
\alias{fads}
\alias{lads}
\title{Returns first and last appearance datums}
\description{
Returns the first and last appearance datums (FADs and LADs) for taxa in a stratigraphic column.}
\usage{

a.datums(x, depths = NULL, skip = 0, increasing.down = FALSE, ...)

fads(x, depths = NULL, skip = 0, increasing.down = FALSE, ...)

lads(x, depths = NULL, skip = 0, increasing.down = FALSE, ...)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{an object of class strat.column.}
  \item{depths}{depths from which to calculate the datums}
  \item{skip}{a number of depths (levels) to skip, returning NA instead of values for FAD or LAD; defaults to 0.}
  \item{increasing.down}{FALSE (default) returns FADs less than or equal to LADs, as is the case when depths are measured up from the bottom of, e.g. a stratigraphic section; TRUE reverses FADs and LADs, as is the case when depths are measured from the surface in wells or cores.}
  \item{...}{not currently used.}
}
\details{
  If \code{depths} is provided, it will clobber \code{x$depths}, should \code{x$depths} exist.
}

\value{

\code{a.datums} returns a data frame with columns \code{fads} and \code{lads}, each of which is a numeric vector giving the FAD or LAD of each taxon in the stratigraphic column. \code{\link{fads}} and \code{\link{lads}} return respectively just the fads and just the lads in a single named numeric vector.

}

\author{Walton Green}
\note{Currently no other notes.}

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{plot.strat.column}}, \code{\link{stratigraph}}}

\examples{

data(mohawk)
fads(as.strat.column(mohawk))
# should make mohawk a strat.column without coercion

}

\keyword{manip}