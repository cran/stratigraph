\name{grid.prop.plot}
\alias{grid.prop.plot}
\title{Plots proportions}
\description{
Plots a chart of proportional data (or another continuous variable) through time.}
\usage{
grid.prop.plot(x, y = NULL,
               increasing.down = FALSE)
}

\arguments{
  \item{x}{the matrix of data to be plotted as proportions; each column is a variable; each row is a time (or depth).}
  \item{y}{a vector with length equal to the number of rows in x; if NULL, it will be replaced by 1:nrow(x)}
  \item{increasing.down}{FALSE (default) plots times (depths) increasing up from the bottom to the top of the plot.}
}
\details{}
\value{
  Returns invisibly.
}
\references{}

\author{Walton Green}
\note{} 

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{plot.strat.column}}, \code{\link{rangechart}}}

\examples{

xx <- matrix(sample(1:100), ncol = 4)
grid.prop.plot(xx)
grid.prop.plot(xx, c(1:10, 23, 24:35, 40, 42), increasing.down = FALSE)

}

\keyword{hplot}