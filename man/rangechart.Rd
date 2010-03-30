\name{rangechart}
\alias{rangechart}
\title{Plots a range chart}
\description{
Plots a range chart of stratigraphic data.}
\usage{
rangechart(x = NULL,
            counts = NULL,
            depths = NULL,
            sample.labels = NULL,
            taxa = NULL,
            short.names = NULL,
            higher.grp = NULL,
            tax.cat = NULL,
            reorder = NULL,
            plot.points = FALSE,
            plot.depths.increasing.down = TRUE,
            llwd = 2,
            cex.xaxis = 0.5,
            cex.yaxis = 1,
            ...)
}

\arguments{
  \item{x}{an object of class \code{strat.column} to be plotted.}
  \item{counts}{a data frame or matrix of counts or a string giving the path to a comma separated flat text file in the proper form to be read in by \code{read.csv()} to a data frame and plotted.}
  \item{depths}{a vector of depths the same length as the number of rows in counts.}
  \item{sample.labels}{a character vector of labels, the same length as the number of rows in counts, with which to label the samples.}
  \item{taxa}{taxon names.}
  \item{short.names}{abbreviated taxon names.}
  \item{higher.grp}{a higher taxonomic group for each taxon, empty by default (Factor taking levels: ???).}
  \item{tax.cat}{a category or label for each taxon, empty by default (Factor taking levels: ??? ).}
  \item{reorder}{a vector to reorder the taxa. Ignored if NULL(default). If a string of length 1, invokes special options 'fad.by.category', 'lad.by.category', and 'by.count'}
  \item{plot.points}{FALSE (default) plots actual occurrences as points when TRUE.}
  \item{plot.depths.increasing.down}{TRUE (default) plots depths increasing from the top to the bottom of the plot.}
  \item{llwd}{line width of the range bars, defaulting to 2. Compare par(lwd = 2); passed to segments().}
  \item{cex.xaxis}{character expansion applied to x-axis labels, defaulting to 0.5. Compare par(cex.axis = 0.5); passed to axis(1, ...).}
  \item{cex.yaxis}{character expansion applied to y-axis labels, defaulting to 1. Compare par(cex.axis = 1); passed to axis(2, ...).}
  \item{...}{arguments passed through to lower level plotting functions.}
}
\details{}
\value{Returns invisibly.}
\references{}
\author{Walton Green}
\note{}

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{strat.column}}}

\examples{

## Examples

#data(cerrejon)
#cerrejon.counts <- t(cerrejon[-(1:2),])
#cerrejon.counts <- apply(cerrejon.counts, 2, as.numeric)
#row.names(cerrejon.counts) <- names(cerrejon)
#cerrejon.depths <- names(cerrejon)
#cerrejon.depths <- as.numeric(gsub('X', '', cerrejon.depths, perl = TRUE))
#cerrejon.samp.names <- cerrejon[1,]
#cerrejon.lith <- as.factor(as.character(cerrejon[2,]))
#rangechart(counts = cerrejon.counts, depths = cerrejon.depths)

data(corneta)
corneta.counts <- corneta[-1,-(1:2)]
corneta.counts <- corneta.counts[,-(ncol(corneta.counts))]
corneta.counts <- apply(corneta.counts, 2, as.numeric)
corneta.depths <- row.names(corneta)[-1]
corneta.samp.names <- corneta$label[-1]
corneta.tax.cat <- as.factor(as.character(corneta[1,-(1:2)]))
corneta.tax.cat <- corneta.tax.cat[1:(length(corneta.tax.cat)-1)]
rangechart(counts = corneta.counts, depths = corneta.depths,
          tax.cat = corneta.tax.cat,
          reorder = 'lad.by.category')

data(plain)
rangechart(counts = plain[,2:4], depths = plain[,1],
          tax.cat = as.factor(c(1,2,1)),
          reorder = 'lad.by.category')

data(rogerslk)
rangechart(as.strat.column(rogerslk), reorder = 'fad', pch = 20)

## Coloring the different categories....
data(mohawk)
rangechart(counts = mohawk$counts, depths = mohawk$depths,
          tax.cat = mohawk$tax.cat, reorder = 'lad.by.category')
}

\keyword{hplot}