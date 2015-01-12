\name{writeGPDascii}
\alias{writeGPDascii}
\alias{writeTilia}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Reads GPD ascii files}
\description{
Writes ascii files in the Global Pollen Database (GPD) ascii format.}
\usage{
writeGPDascii(x, counts = NULL, depths = NULL,
              sample.names = NULL,
              absolute.ages = NULL,
              taxa = NULL,
              short.names = NULL,
              tax.cat = NULL,
              metadata = NULL,
              output.file = NULL, ...)
writeTilia(...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{an object of class \code{strat.column}.}
  \item{counts}{NULL}
  \item{depths}{NULL}
  \item{sample.names}{NULL}
  \item{absolute.ages}{NULL}
  \item{taxa}{NULL}
  \item{short.names}{NULL}
  \item{tax.cat}{NULL}
  \item{metadata}{NULL}
  \item{output.file}{if NULL (the default), print output to the terminal}
  \item{...}{not currently used.}
}
%\details{}
\value{Returns invisibly.}
\references{

Eric Grimm?

http://www.ncdc.noaa.gov/paleo/gpd.html
http://www.ncdc.noaa.gov/paleo/pollen/gpdascii.html

}

\author{Walton Green}

%\note{} 

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{readGPDascii}}, \code{\link{plot.strat.column}}}

\examples{

## Note that this example will only work when executed on a
##   computer connected to the net

\dontrun{
URL <- paste('ftp://ftp.ncdc.noaa.gov/pub/data/paleo/pollen/',
             'asciifiles/fossil/ascfiles/gpd/rogerslk.txt', sep = '')
rogerslk <- readGPDascii(URL)
cat(writeGPDascii(rogerslk))
}
}

\keyword{manip}