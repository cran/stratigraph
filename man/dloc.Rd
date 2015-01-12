\name{dloc}
\alias{dloc}
\alias{dcloc}
\title{Draws a line of correlation between two sections}
\description{
Calculates and draws a line of correlation between two sections.}
\usage{

dloc(x, y, weights = NULL, pin.ends = FALSE,
     method = 'genetic', end.segs = ceiling(length(x)/3),
     pop = 100, max.gen = 200, mut = 0.01,
     recomb = 'roulette', ext = 0.5, tol = 0.005,
     start = 'lm', verbose = 2, plot = 1)

dcloc(x, y, pins, weights = NULL,
      method = 'genetic', end.segs = 3,
      pop = 100, max.gen = 200, mut = 0.01,
      recomb = 'roulette', ext = 0.5, tol = 0.005,
      start = 'lm', verbose = 2, plot = 1)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a vector of the depths of datums in the better ('reference') section}
  \item{y}{a vector of the depths of datums in the worse section.}
  \item{pins}{a vector of fixed points (marker beds) through which the LOC is constrained to pass.}
  \item{weights}{a vector of weights the same length as x and y for weighted least squares.}
  \item{pin.ends}{whether the ends should be pinned to (fixed at) the first and last points: TRUE or 'both' fixes both top and bottom, 'top' and 'bottom' fix one or the other and FALSE (the default) allows both to float.}
  \item{method}{currently only 'genetic' supported.}

  \item{end.segs}{the maximum number of line segments in the LOC to consider.}
  \item{pop}{the population size of evolving LOCs.}
  \item{max.gen}{the maximum number of generations to evolve.}
  \item{mut}{mutation rate; the fraction of the the range of supplied values given to rnorm() as standard deviation of the mutation of solutions each generation.}
  \item{recomb}{type of recombination; in this case only 'roulette' is supported, producing 'fitness proportionate selection'.}
  \item{ext}{extinction rate; the proportion of solutions that go extinct each generation.}
  \item{tol}{a tolerance at which to stop evolving; not yet implemented.}
  \item{start}{the solution from which to begin: either 'lm' for a least-squares linear model or 'uniform' for a random-uniform model.}
  \item{verbose}{0, 1, 2; larger number gives more information.}
  \item{plot}{0, 1, 2; larger number provides more plots.}
}

%\details{}

\value{
Returns a list of three things: locs, bestloc and bestsse. locs gives the ending population of LOCs; best loc gives the best LOC; and bestsse gives the sum of squared errors for the best LOC. Each of these has a length equal to the number of different numbers of segments considered, so if 1, 2, 3, 4, and 5-segment LOCs were considered, locs, bestloc and bestsse will each have length 5.
}

\references{
Zhang, T (2000) Artificial Intelligence Models for Quantitative Biostratigraphy. PhD. Dissertation, University of Illinois, Chicago.

Zhang, T. and R. Plotnick (2006) `Graphic correlation using genetic algorithms' Mathematical Geology 38(7):781--800.

Miller, F.X., 1977 `The graphic correlation method in biostratigraphy' in Concepts and Methods in Biostratigraphy (Kauffman et al., eds.), pp. 165--186.
}

\author{Walton Green}

%\note{} 

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{plot.strat.column}},
         \code{\link{stratigraph}}}

\examples{
\dontrun{

# simplest example
#x <- c(0,1,2,3,5,7,9,17,18,20) + rnorm(10)/5
#y <- c(0,1,2,4,4,4,4,8,9,10) + rnorm(10)/5
x <- c(0.103, 1.336, 2.036, 2.928, 5.123, 6.738,
       8.998,17.145,17.960,19.753)
y <- c(0.152, 0.855, 1.784, 4.072, 4.055, 3.992,
       4.336, 7.963, 9.238,10.162)

xy.loc <- dloc(x, y, end.segs = 3, pop = 10, max.gen = 10,
               start = 'uniform', plot = 2)

xy.loc <- dloc(x, y, pin.ends = 'top', end.segs = 3,
               pop = 100, max.gen = 5, start = 'lm', plot = 1)

xy.loc <- dloc(x, y)

xy.cloc <- dcloc(x, y, pins = list(x = c(5,10), y = c(4,6)),
                 max.gen = 10)

}
}

\keyword{misc}
