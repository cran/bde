\name{muller94BoundaryKernel}
\Rdversion{1.1}
%\docType{genericFunction}
\alias{muller94BoundaryKernel}
\alias{muller94BoundaryKernel-generator}

\title{\code{Muller94BoundaryKernel} generator method}
\description{
  User friendly constructor method for \code{Muller94BoundaryKernel} objects.
}
\usage{
muller94BoundaryKernel(dataPoints, mu=1, b=length(dataPoints)^(-2/5), 
                        dataPointsCache=NULL, lower.limit = 0, 
                        upper.limit = 1)
}
\arguments{
   \item{dataPoints}{a numeric vector containing data samples within the \code{[lower.limit,upper.limit]} interval. These data samples are used to obtain the kernel estimator}
   \item{mu}{a integer value indicating the degree of smoothness for the boundary kernel. \code{mu} can take the following values: 0 (uniform kernel), 1 (Epanechnikov kernel), 2 (biweight kernel) or 3 (triweight kernel)}
   \item{b}{the bandwidth of the kernel estimator}
   \item{dataPointsCache}{a numeric vector containing points within the \code{[lower.limit,upper.limit]} interval. These points are used for convenience to cache density and distribution values. If \code{dataPointsCache=NULL} the values are initialized to a sequence of 101 equally spaced values from \code{lower.limit} to \code{upper.limit}}
   \item{lower.limit}{a numeric value for the lower limit of the bounded interval for the data}
  \item{upper.limit}{a numeric value for the upper limit of the bounded interval for the data. That is, the data is with   the \code{[lower.limit,upper.limit]} interval}
   
}
\details{
 \describe{
    See \code{\linkS4class{Muller94BoundaryKernel}} class for more details.
  }
}

\keyword{generator-methods}
