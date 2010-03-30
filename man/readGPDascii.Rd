\name{readGPDascii}
\alias{readGPDascii}
\alias{readTilia}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Reads GPD ascii files}
\description{
Reads ascii files written in the Global Pollen Database ascii format.}
\usage{
readGPDascii(x)
readTilia(...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a string giving the file path and name or a URL from which to obtain the ascii (.txt) file to read.}
  \item{...}{not currently used.}
}
\details{}
\value{
  Returns a list with the following elements: \code{counts} (count matrix of depths by taxa), \code{depths,} \code{sample.names,} \code{absolute.ages,} \code{taxa} (the full taxon names), \code{short.names} (8 character short names), \code{tax.cat} (taxonomic category, a factor to group the taxa), and \code{metadata} (a character vector providing commented metadata).
}
\references{

Eric Grimm?

http://www.ncdc.noaa.gov/paleo/gpd.html
http://www.ncdc.noaa.gov/paleo/pollen/gpdascii.html

}

\author{Walton Green}
\note{}

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{plot.strat.column}}, \code{\link{writeGPDascii}}}

\examples{

## Note that this example will only work when executed on a
##   computer connected to the net

\dontrun{
  URL <- paste('ftp://ftp.ncdc.noaa.gov/pub/data/paleo/pollen/',
               'asciifiles/fossil/ascfiles/gpd/mohawk.txt', sep = '')
  mohawk <- readGPDascii(URL)
}

}

\keyword{manip}