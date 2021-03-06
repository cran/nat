% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neuron.R, R/dotprops.R
\name{scale.neuron}
\alias{scale.neuron}
\alias{scale}
\alias{scale.dotprops}
\title{Scale and centre neuron 3D coordinates}
\usage{
\method{scale}{neuron}(x, center = TRUE, scale = TRUE)

\method{scale}{dotprops}(x, center = TRUE, scale = TRUE)
}
\arguments{
\item{x}{A neuron}

\item{center}{3-vector to subtract from x,y,z coords}

\item{scale}{3-vector used to divide x,y,z coords}
}
\value{
neuron with scaled coordinates
}
\description{
note that \code{scale.dotprops} recalculates the tangent vectors
  after scaling the 3D coords. See \code{\link{dotprops}} for details.
}
\details{
If \code{scale=TRUE}, the neuron will be rescaled to unit sd in each
  axis. If \code{center=TRUE}, the neuron will be centred around the axis
  means. See \code{base::\link{scale.default}} for additional details.
}
\examples{
n1.scaledown=scale(Cell07PNs[[1]],scale=c(2,2,3))
n1.scaleup=scale(Cell07PNs[[1]],scale=1/c(2,2,3))
}
\seealso{
\code{\link{scale.default}}, \code{\link{*.neuron}}
}
