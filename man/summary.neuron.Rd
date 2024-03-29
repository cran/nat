% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summary.R
\name{summary.neuronlist}
\alias{summary.neuronlist}
\alias{summary}
\alias{summary.neuron}
\alias{summary.dotprops}
\title{Summary statistics for neurons (e.g. cable length, number of nodes)}
\usage{
\method{summary}{neuronlist}(object, ..., include.attached.dataframe = FALSE)

\method{summary}{neuron}(object, ...)

\method{summary}{dotprops}(object, veclength = 1, ...)
}
\arguments{
\item{object}{The neuron or neuronlist to summarise}

\item{...}{For \code{summary.neuronlist} additional arguments passed on to 
summary methods for individual neurons}

\item{include.attached.dataframe}{Whether to include the neuronlists attached
metadata in the returned data.frame.}

\item{veclength}{The vector length to assume for each segment so that a cable
length estimate can be made.}
}
\value{
A \code{data.frame} summarising the tree properties of the neuron 
  with columns \itemize{
  
  \item root
  
  \item nodes
  
  \item segments
  
  \item branchpoints
  
  \item endpoints
  
  \item cable.length
  
  }
}
\description{
\code{summary.neuronlist} computes tree statistics for all the 
  neurons in a neuronlist object

\code{summary.neuron} computes statistics for individual neurons

\code{summary.dotprops} computes statistics for individual
  neurons in dotprops format. Note the \code{veclength} argument.
}
\examples{
# summary for a whole neuronlist
summary(Cell07PNs)
# including the attached data.frame with additional metadata
head(summary(Cell07PNs, include.attached.dataframe = FALSE))
# for a single regular format neuron
summary(Cell07PNs[[1]])
# for a single dotprops format neuron
summary(kcs20[[1]])
# specify a different estimate for the cable length associated with a single
# point in the neuron
summary(kcs20[[1]], veclength=1.2)
}
\seealso{
\code{\link{seglengths}}
}
