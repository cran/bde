\name{KakizawaB3}
\Rdversion{1.1}
\docType{class}
\alias{KakizawaB3}
\alias{KakizawaB3-class}


\title{Class \code{"KakizawaB3"}}
\description{
This class deals with B3 approximation to kernel density estimation as described in Kakizawa (2004). This is a Berstein polynomial approximation of the density function which uses BoundedDensity objects instead of a polynomial function. By contrast to the original Kakizawa's approach where only boundary kernels are used, here, any BoundedDensity object is allowed. Using this estimator, the methods implemented in the class can be used to compute densities, values of the distribution function, quantiles, sample the distribution and obtain graphical representations. 
}
\section{Objects from the Class}{
Objects can be created by using the generator function \code{\link{kakizawaB3}}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{   
    \item{\code{dataPointsCache}:}{a numeric vector containing points within the \code{[lower.limit,upper.limit]} interval}
    \item{\code{densityCache}:}{a numeric vector containing the density for each point in \code{dataPointsCache}}
    \item{\code{distributionCache}:}{a numeric vector used to cache the values of the distribution function. This slot is included to improve the performance of the methods when multiple calculations of the distribution function are used}
    \item{\code{dataPoints}:}{a numeric vector containing data samples within the \code{[lower.limit,upper.limit]} interval. These data samples are used to obtain the kernel estimator}
    \item{\code{densityEstimator}:}{a BoundedDensity object used to estimate the density}
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
    \item{getm}{See \code{"\link[=getm]{getm}"} for details}         
    \item{getdensityEstimator}{See \code{"\link[=getdensityEstimator]{getdensityEstimator}"} for details}     
	 }
}
\author{
Guzman Santafe, Borja Calvo and Aritz Perez
}
\examples{
# create the model 
# we use a MicroBetaChen99Kernel is used as estimator y KakizawaB1 approximation
est <- microBetaChen99Kernel(dataPoints = tuna.r, b = 0.01, modified = FALSE)
model <- kakizawaB3(dataPoints = tuna.r, m = 25, estimator = est)


# examples of usual functions
density(model,0.5)

distribution(model,0.5,discreteApproximation=FALSE)
 
# graphical representation
hist(tuna.r,freq=FALSE,main="Tuna Data")
lines(model, col="red",lwd=2)

# graphical representation using ggplot2 
graph <- gplot(model, show=TRUE, includePoints=TRUE)
}
\references{
  Kakizawa, Y. (2004). Bernstein polynomial probability density estimation.
  \emph{Journal of Nonparametric Statistics}, 16(5), 709-729.
}

\keyword{classes}
