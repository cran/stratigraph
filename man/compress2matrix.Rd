\name{compress2matrix}
\alias{compress2matrix}
\title{Converts compressed format files to flat matrices}
\description{
Reads 'compressed format' text files giving the species found at particular sites and rewrite them into a sites by species matrix.}
\usage{

compress2matrix(path, skip = 3, verbose = TRUE,
                lump.queries = FALSE,
                exclude.taxa = NULL)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{path}{the directory within which to process all the files that end in '.BB' (which must be capitalized).}
  \item{skip}{skip is the number of lines to skip at the beginning of each file, defaulting to 3.}
  \item{verbose}{verbose = TRUE (the default) prints diagnostic messages.}
  \item{lump.queries}{lump.queries = TRUE treats taxon names/codes that are followed by question marks as if they were the same as the same name/code not followed by a question mark. FALSE (the default) treats queries as separate taxa.}
  \item{exclude.taxa}{character vector giving taxon names to exclude.}
}

\details{

Compressed format data has a line of data for each site consisting of tab-separated records, the first two records give the site name; the remaining records are pairs separated by a single space giving species names and counts (species names can be repeated).

}

\value{

The return value of the function is a list including a vector of site names, a vector of taxon names/codes, and a sites-by-species matrix. As a side-product, the function saves (in the directory specified by path) a matrix (tab-delimited text file ending in .MTX) for each locality (.BB file) and the overall sites-by-species matrix as a file named 'SiteBySpp.MTX'.

}
\references{

}

\author{Walton Green}
\note{Currently no other notes.} 

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{plot.strat.column}}, \code{\link{stratigraph}}}

\examples{


}

\keyword{manip}