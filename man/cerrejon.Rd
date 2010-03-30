\name{cerrejon}
\alias{cerrejon}
\docType{data}
\title{Cerrejon Core}
\description{
  Pollen counts from the Cerrejon core. This is to illustrate how to read in `raw' data in an arbitrary format, so it has been left entirely as character data.
}
\usage{data(cerrejon)}
\format{
  A data frame with 189 observations (rows) of 113 variables (columns). The columns represent depths and the rows (after the first two) taxa; the data are raw counts.
}

\details{

Levels of ENVIRONMENT

\tabular{cl}{
1, Ch \tab channel-fill deposits in fluvial settings (sandstone)\cr 
2, Ov \tab overbank, crevasse splays and sand sheets deposits\cr
 \tab in flood plains (mixed sandstone and siltstone,\cr
 \tab mudstone, paleosols) \cr
2.1 \tab coal---transgressive\cr
2.2 \tab coal---regressive\cr
2.3 \tab coal---unidentified\cr
3, La \tab subaqueous coastal-lagoon, ponds (fossiliferous shale, shale)\cr
4, Sp \tab supratidal flats, mud flats, tidal creeks (siltstone, mudstone, paleosols)\cr
5, In \tab intertidal flats, tidal creeks (heterolithic and rhythmite sandstones\cr and siltstones; sandstones)
}

}

\source{
  Carlos Jaramillo
}
\references{
  Jaramillo, C., Pardo-Trujillo, A,. Rueda, M., Harrington, G., Bayona,
G., Torres, V., and Mora, G. Palynology of the Upper Paleocene
Cerrejon Formation, Northern Colombia.  Submitted to Palynology
}
\examples{
data(cerrejon)
str(cerrejon)
}
\keyword{datasets}