\name{strat.column}
\alias{strat.column}
\alias{is.strat.column}
\alias{as.strat.column}
\alias{summary.strat.column}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Creates a strat.column object}

\description{
  Creates and manipulates S3 objects of class \code{strat.column}
}

\usage{
  \method{summary}{strat.column}(object, ...)
  strat.column(counts, ...)
  is.strat.column(x, ...)
  as.strat.column(x)
}

\arguments{
  \item{counts}{a count matrix to be converted to a \code{strat.column} object.}
  \item{x}{an object to be checked for class attribute or coerced to a \code{strat.column}.}
  \item{object}{a \code{strat.column} object.}
  \item{...}{other components of a \code{strat.column} object to be included; see below for argument names that can be assigned values.}
}

\details{
An object of class \code{strat.column} is a list \code{x} with \code{attr(x, 'class') == 'strat.column'}. \code{is.strat.column()} only checks that it has the correct class attribute and a non-empty \code{counts}, which is the minimum needed for plotting. \code{summary.strat.column} provides a longer summary of what data are available, and \code{\link{str}} provdes a full description of the data structure.

The following names are defined elements of a strat.column; more can be defined by the user simply by assigning a value to \code{x\$new.name}.

REQUIRED: counts

OPTIONAL: taxa, short.names, higher.grp, tax.cat, reorder, depths, sample.names, absolute.ages, envir.facies, sample.labels, sample.label.title, CaCO3, TOC, TIC, N, S, caliper, gamma.ray, density, fe.resist, mag.sus, resistivity, lithology, porosity, taxa.clust, sample.clust, lat.ddmmss, lat.dd, long.dddmmss, long.dd, loc.descript, site.name, country, state, county, elevation, elev.units, rc.ages, contact, refs, metadata

THE BASIC COUNT MATRIX with m taxa as columns and n depths as rows

  $counts       : num [1:n, 1:m]

ATTRIBUTES OF THE TAXA

  $taxa         : chr [1:m]

  $short.names  : chr [1:m]

  $higher.grp   : Factor [1:m] w/ levels: Angiosperm, Conifer, Fern, Pteridophyte, Moss, Indet. (levels not on this list can also be used.)

  $tax.cat      : Factor [1:m] w/ levels: Arborescent, Herbaceous, Wetland, Xerophyte, Phytolith, Indet., Marker (levels not on this list can also be used.)

  $reorder      : num [1:m]

ATTRIBUTES OF THE SAMPLES

  $depths       : num [1:n] by default, depths are measured down from a datum.

  $sample.names : chr [1:n] text for labels in addition to the depths.

  $absolute.ages: num [1:n]

  $envir.facies : factor [1:n] w/ levels: ??? (a factor giving an environmental interpretation of the sample.)

  $sample.labels: chr [1:n] other labels for each sample (e.g. numbers)

  $sample.label.title: chr [1] title for the extra sample label, e.g. 'Sample Number'.

GEOCHEMICAL DATA
  $CaCO3        : num [1:n] (wt % CaCO3)

  $TOC          : num [1:n] (wt % total organic carbon)

  $TIC          : num [1:n] (wt % total inorganic carbon)

  $N            : num [1:n] (wt % nitrogen)

  $S            : num [1:n] (wt % sulfer)

CORE LOG DATA

  $caliper      : num [1:p]

  $gamma.ray    : num [1:p]

  $density      : num [1:p]

  $fe.resist    : num [1:p]

  $mag.sus      : num [1:p]

  $resistivity  : num [1:p]

  $lithology    : num [1:p]

  $porosity     : num [1:p]

where p can be any integer; the complete vector fits into the same distance in the stratigraphic column as the n samples. If alignment of log and sample data is required, it is up to the user to down-sample appropriately.

CLUSTERING

  $taxa.clust   : cluster object for columns

  $sample.clust : cluster object for rows

SITE INFORMATION

  $lat.ddmmss   : chr [1]

  $lat.dd       : chr [1]

  $long.dddmmss : chr [1]

  $long.dd      : chr [1]

  $loc.descript : chr [1]

  $site.name    : chr [1]

  $country      : chr [1]

  $state        : chr [1]

  $county       : chr [1]

  $elevation    : num [1]

  $elev.units   : chr [1]

DATING METADATA

  $rc.ages      : data.frame [,]

METADATA

  $contact      : chr [1:x] \# a person to contact

  $refs         : chr [1:y] \# citations

  $metadata     : chr [1:z] \# random other notes
}

\value{Returns an object of type \code{strat.column}}

%\references{}

\author{Walton Green}

%\note{}

%Make other sections like Warning with \section{Warning }{....}

\seealso{\code{\link{readGPDascii}}, \code{\link{plot.strat.column}}}

\examples{
  # PUT EXAMPLES HERE
}

\keyword{manip}
