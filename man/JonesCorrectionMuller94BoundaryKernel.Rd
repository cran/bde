\name{JonesCorrectionMuller94BoundaryKernel}
\Rdversion{1.1}
\docType{class}
\alias{JonesCorrectionMuller94BoundaryKernel}
\alias{JonesCorrectionMuller94BoundaryKernel-class}


\title{Class \code{"JonesCorrectionMuller94BoundaryKernel"}}
\description{
This class deals with nonnegative boundary correction of the \code{\link{muller94BoundaryKernel}} estimators for bounded densities. In this normalization, two kernel functions are needed. The first kernel funciton -\code{K(u)}- is the kernel function used in \code{\link{muller94BoundaryKernel}} (using left boundary, interior or right boundary kernel functions as needed). For the second kernel function, the popular choice \code{L(u) = u * K(u)} is taken. The kernel estimator is computed using the provided data samples. Using this kernel estimator, the methods implemented in the class can be used to compute densities, values of the distribution function, quantiles, sample the distribution and obtain graphical representations. Note that the renormalization of this kernel estimator guarantees nonnegative values for the density function but the cumulative density function may takes values greater than 1.
}
\section{Objects from the Class}{
Objects can be created by using the generator function \code{\link{jonesCorrectionMuller94BoundaryKernel}}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{   
   \item{\code{dataPointsCache}:}{a numeric vector containing points within the \code{[lower.limit,upper.limit]} interval}
    \item{\code{densityCache}:}{a numeric vector containing the density for each point in \code{dataPointsCache}}
    \item{\code{distributionCache}:}{a numeric vector used to cache the values of the distribution function. This slot is included to improve the performance of the methods when multiple calculations of the distribution function are used}
    \item{\code{dataPoints}:}{a numeric vector containing data samples within the \code{[lower.limit,upper.limit]} interval. These data samples are used to obtain the kernel estimator}
    \item{\code{b}:}{the bandwidth of the kernel estimator}
    \item{\code{mu}:}{a integer value indicating the degree of smoothness for the boundary kernel. \code{mu} can take the following values: 0 (uniform kernel), 1 (Epanechnikov kernel), 2 (biweight kernel) or 3 (triweight kernel)}
    \item{\code{normalizedKernel}:}{this slot is used to save a NormalizedBoundaryKernel object used in the normalization. It is only for internal use}
    \item{\code{lower.limit}:}{a numeric value for the lower limit of the bounded interval for the data}
    \item{\code{upper.limit}:}{a numeric value for the upper limit of the bounded interval for the data}    
  }
}
\section{Methods}{
  \describe{
    \item{density}{See \code{"\link[=density]{density}"} for details} 
    \item{distribution}{See \code{"\link[=distribution]{distribution}"} for details} 
    \item{quantile}{See \code{"\link[=quantile]{quantile}"} for details} 
    \item{rsample}{See \code{"\link[=rsample]{rsample}"} for details} 
    \item{plot}{See \code{"\link[=plot]{plot}"} for details} 
    \item{getdataPointsCache}{See \code{"\link[=getdataPointsCache]{getdataPointsCache}"} for details} 
    \item{getdensityCache}{See \code{"\link[=getdensityCache]{getdensityCache}"} for details} 
    \item{getdistributionCache}{See \code{"\link[=getdistributionCache]{getdistributionCache}"} for details} 
    \item{getdataPoints}{See \code{"\link[=getdataPoints]{getdataPoints}"} for details} 
    \item{getb}{See \code{"\link[=getb]{getb}"} for details} 
    \item{getmu}{See \code{"\link[=getmu]{getmu}"} for details} 
   }
}
\author{
Guzman Santafe, Borja Calvo and Aritz Perez
}
\examples{
# data points to cache densities and distribution
cache <- seq(0,1,0.01)

# create the model 
kernel <-jonesCorrectionMuller94BoundaryKernel(dataPoints = tuna.r, b = 0.01, mu = 2, 
                                                dataPointsCache = cache)


# examples of usual functions
density(kernel,0.5)

distribution(kernel,0.5,discreteApproximation=FALSE)
 
# graphical representation
hist(tuna.r,freq=FALSE,main="Tuna Data")
lines(kernel, col="red",lwd=2)

# graphical representation using ggplot2 
graph <- gplot(kernel, show=TRUE, includePoints = TRUE)
}
\references{
  Jones, M. C. and Foster, P. J. (1996). A simple nonnegative boundary correction method for kernel density estimation.
  \emph{Statistica Sinica}, 6, 1005-1013.

  Muller, H. and Wang, J. (1994). Hazard rate estimation under random censoring with varying kernels and bandwidths.
  \emph{Biometrics}, 50(1), 61-76.
}

\keyword{classes}
