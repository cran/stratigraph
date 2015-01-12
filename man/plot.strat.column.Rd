\name{plot.strat.column}
\alias{plot.strat.column}
\title{Plots (bio)stratigraphic data}
\description{
Plots abundance (or range or relative abundance) diagrams of stratigraphic data, e.g. `pollen diagrams'.}
\usage{
\method{plot}{strat.column}(x = NULL,
  counts = NULL,
  depths = NULL,
  at.depths = NULL,
  sample.labels = NULL,
  taxa = NULL,
  short.names = NULL,
  higher.grp = NULL,
  tax.cat = NULL,
  metadata = NULL,
  prop.cutoff = NULL,
  cols = c('depths', 'tick', 'samples', 'tick',
           'blank', 'data', 'tick', 'depths', 'totals'),
  colwidths = NULL,
  output.size = NULL,
  output.file = NULL,
  style = 'mountains',
  reorder = NULL,
  outer.margins = list(bottom = unit(1, "lines"),
                       left = unit(1, "lines"),
                       top = unit(1, "lines"),
                       right = unit(1, "lines")),
  fontsize = 9,
  width.multiplier = 2,
  height.increment = 0.25, # inches per stratigraphic level
  fill.cols = NULL,
  line.cols = NULL,
  box.pars = NULL,
  proportional = FALSE,
  use.color = TRUE,
  bottom.axis = TRUE,
  count.label = TRUE,
  sample.totals = TRUE,
  sample.category.totals = FALSE,
  sample.nos = TRUE,
  show.taxon.count.totals = TRUE,
  plot.depths.increasing.down = TRUE,
  debug = FALSE,
  ...)

%\begin{verbatim}
%## S3 method for class 'strat.column':
%plot(x, ...)
%\end{verbatim}
}

\arguments{
  \item{x}{an object of class \code{strat.column} to be plotted.}
  \item{counts}{a data frame or matrix of counts or a string giving the path to a comma separated flat text file in the proper form to be read in by \code{\link{read.csv}} to a data frame and plotted.}
  \item{depths}{a vector of depths the same length as the number of rows in counts.}
  \item{at.depths}{a vector of depths at which to draw axis ticks.}
  \item{sample.labels}{a character vector of labels, the same length as the number of rows in counts, with which to label the samples.}
  \item{taxa}{taxon names.}
  \item{short.names}{abbreviated taxon names.}
  \item{higher.grp}{a higher taxonomic group for each taxon, empty by default (Factor taking levels: ???).}
  \item{tax.cat}{a category or label for each taxon, empty by default (Factor taking levels: ??? ).}
  \item{metadata}{a list including any or all of the following named values: SiteName, Latitude, Longitude, Country, Location, SiteType, Interval, Scale, PlotDate, Contact, Publications, Notes.}
  \item{prop.cutoff}{defaults to NULL (no effect); otherwise a proportion such that taxa are removed if they account for less than the given proportion of total counts.}
  \item{cols}{a vector of strings chosen from {'depths', 'tick', 'samples', 'totals', and 'blank'} describing the columns that will be plotted to the left of the data columns in the plot.}
  \item{colwidths}{a vector of units the same length as cols giving the widths of the columns.}
  \item{output.size}{a 2-vector giving the width and height (in that order) of the final output size of the plot in inches. If NULL (the default) the size is calculatd by the number of taxa in the data matrix.}
  \item{output.file}{a string giving the path and filename to which to save the plot. If NULL (the default), the plot is produced in the active graphics device.}
  \item{style}{'mountains' and 'bars' currently available.}
  \item{reorder}{a vector to reorder the taxa. Ignored if NULL(default). If a string of length 1, invokes special options 'fad.by.category', 'lad.by.category', and 'by.count'}
  \item{outer.margins}{a list of length four with the named values bottom, left, top and right, each of with is a unit and gives the appropriate outer margin.}
  \item{fontsize}{the basic font size of taxa names.}
  \item{width.multiplier}{multiplier for calculating the final width of the plot; it is the times larger than the base column width of the widest column. Ignored if output.size is specified.}
  \item{height.increment}{the height increment allowed for each stratigraphic level when calculating the final height of the plot. Ignored if output.size is specified.}
  \item{fill.cols}{a vector of colors the same length as the number of taxa with which to fill the profiles.}
  \item{line.cols}{a vector of colors the same length as the number of taxa with which to draw the outline of the profiles.}
  \item{box.pars}{a list of gpar() objects for passing graphics parameters to the various boxes in the plot.}
  \item{proportional}{FALSE}
  \item{use.color}{TRUE}
  \item{bottom.axis}{TRUE}
  \item{count.label}{TRUE}
  \item{sample.totals}{TRUE (default) plots total abundance of counted specimens (in each level/sample) through the section. FALSE suppresses this feature.}
  \item{sample.category.totals}{TRUE plots total abundances of each group of taxa (as grouped by 'category'); defaults to FALSE, in which case nothing is done.}
  \item{sample.nos}{TRUE (default) prints sample numbers as well as depths. FALSE suppresses this feature.}
  \item{show.taxon.count.totals}{TRUE (default) prints total counts in each taxon; FALSE suppresses this feature.}
  \item{plot.depths.increasing.down}{TRUE (default) plots depths increasing from the top to the bottom of the plot.}
  \item{debug}{TRUE (default) prints debugging information.}
  \item{...}{arguments passed through to lower level plotting functions.}
}
\details{
  Note that the way plot.strat.column is now set up, it returns an error if too small a fixed output.size is specified for a plot of more than 30 taxa or if no fixed size is specified for a plot of fewer than 30 taxa.
}
\value{
  Returns invisibly.
}

%\references{}

\author{Walton Green}
\note{The output of this function will almost always need to be modified slightly in a vector drawing program like Inkscape or Adobe Illustrator before publication.}

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{strat.column}}}

\examples{

## Examples

data(plain)
plot.strat.column(counts = plain[,2:4], depths = plain[,1],
          tax.cat = as.factor(c(1,2,1)), output.size = c(4,4),
          reorder = 'lad.by.category')
# Note there is a bug in this: the category vector needs to be reordered too

\dontrun{

data(cerrejon)
cerrejon.counts <- t(cerrejon[-(1:2),])
cerrejon.counts <- apply(cerrejon.counts, 2, as.numeric)
row.names(cerrejon.counts) <- names(cerrejon)
cerrejon.depths <- names(cerrejon)
cerrejon.depths <- as.numeric(gsub('X', '', cerrejon.depths, perl = TRUE))
cerrejon.samp.names <- cerrejon[1,]
cerrejon.lith <- as.factor(as.character(cerrejon[2,]))

plot.strat.column(counts = cerrejon.counts, depths = cerrejon.depths,
          output.file = 'cerrejon.pdf')

data(corneta)
corneta.counts <- corneta[-1,-(1:2)]
corneta.counts <- corneta.counts[,-(ncol(corneta.counts))]
corneta.counts <- apply(corneta.counts, 2, as.numeric)
corneta.depths <- row.names(corneta)[-1]
corneta.samp.names <- corneta$label[-1]
corneta.tax.cat <- as.factor(as.character(corneta[1,-(1:2)]))
corneta.tax.cat <- corneta.tax.cat[1:(length(corneta.tax.cat)-1)]

plot.strat.column(counts = corneta.counts, depths = corneta.depths,
          tax.cat = corneta.tax.cat, output.file = 'corneta.pdf',
          reorder = 'lad.by.category')

## Coloring the different categories....
data(mohawk)
plot.strat.column(counts = mohawk$counts, depths = mohawk$depths,
          tax.cat = mohawk$tax.cat, reorder = 'lad.by.category',
          output.file = 'mohawk.pdf',
          fill.cols = as.numeric(mohawk$tax.cat))

}
}

\keyword{hplot}