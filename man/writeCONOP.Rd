\name{writeCONOP}
\alias{writeCONOP}
\title{Writes out data in a form appropriate for input into CONOP}
\description{
Takes a series of stratigraphic columns and exports them in the right format to be read into CONOP.}
\usage{

writeCONOP(x, tax.check = TRUE, out.dir = getwd(),
         sect.names = NULL, neg.depths = FALSE,
         scaling = rep ('yes', length(x)),
         REGION = NULL, AGE = NULL,
         REF1 = NULL, REF2 = NULL, REF3 = NULL)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{not documented.}
  \item{tax.check}{not documented.}
  \item{out.dir}{not documented.}
  \item{sect.names}{not documented.}
  \item{neg.depths}{not documented.}
  \item{scaling}{not documented.}
  \item{REGION}{not documented.}
  \item{AGE}{not documented.}
  \item{REF1}{not documented.}
  \item{REF2}{not documented.}
  \item{REF3}{not documented.}
}

%\details{}
%\value{}
%\references{}

\author{Walton Green}
\note{This is a legacy function that may be removed soon.}

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{strat.column}}, \code{\link{stratigraph}}}

\examples{

# examples?

}

\keyword{manip}