\name{oe.rates}
\alias{oe.rates}
\title{Returns origination and extinction rates}
\description{
Returns the origination and extinctions rates of taxa in a stratigraphic column.}
\usage{

oe.rates(x, depths = NULL, breaks = NULL,
         per.capita = FALSE, remove.below = 1, ...)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{an object of class \code{strat.column.}}
  \item{depths}{depths, if different from those provided in x.}
  \item{breaks}{breaks from which to calculate interpolated rates.}
  \item{per.capita}{logical. Whether the origination and extinction rates should be given as fractions of the standing diversity.}
  \item{remove.below}{remove species that occur only this number or fewer levels.}
  \item{...}{not currently used.}
}
\details{
  If \code{depths} is provided, it will clobber \code{x$depths}, should \code{x$depths} exist.
}

\value{

\code{oe.rates} returns a list of \code{$basic,} which is a data frame with columns stand.div, orig and ext giving standing diversity, origination and extinction rates at the sampled depths/times; \code{$bx,} which are the boundary crossers at each sampled depth/time; \code{$intervals,} which gives the lengths of each interval (in depth or time); and \code{$interpol,} which gives interpolated rates per time as calculated by Foote(2000b).

}
\references{

Foote, M. (2000a) `Origination and Extinction Components of Taxonomic Diversity: Paleozoic and Post-Paleozoic Dynamics' Paleobiology 26(4):578--605. 

Foote, M. (2000b) `Origination and extinction components of taxonomic diversity: general problems' Paleobiology 26 (supplement to No. 4):74--102.

}

\author{Walton Green}

%\note{} 

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{plot.strat.column}}, \code{\link{stratigraph}}}

\examples{

data(sI)
sc <- sI[,-1]
rownames(sc) <- sI[,1]
sc <- sc[-c(3, 6, 10, 11, 12)]
oe.rates(sc, depths = sI[,1])

data(mohawk)
oe.rates(mohawk)
oe.rates(as.strat.column(mohawk))
oe.rates(as.strat.column(mohawk), remove.below = 2)
oe.rates(as.strat.column(mohawk), breaks = seq(0, 1500, by = 50))

}

\keyword{manip}