\name{Chen99Kernel}
\Rdversion{1.1}
\docType{class}
\alias{Chen99Kernel}
\alias{Chen99Kernel-class}


\title{Class \code{"Chen99Kernel"}}
\description{
This class deals with Kernel estimators for bounded densities as described in Chen's 99 paper. The kernel estimator is computed using the provided data samples. Using this kernel estimator, the methods implemented in the class can be used to compute densities, values of the distribution function, quantiles, sample the distribution and obtain graphical representations.
}
\section{Objects from the Class}{
Objects can be created by using the generator function \code{\link{chen99Kernel}}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{   
   \item{\code{dataPointsCache}:}{a numeric vector containing points within the \code{[lower.limit,upper.limit]} interval}
    \item{\code{densityCache}:}{a numeric vector containing the density for each point in \code{dataPointsCache}}
    \item{\code{distributionCache}:}{a numeric vector used to cache the values of the distribution function. This slot is included to improve the performance of the methods when multiple calculations of the distribution function are used}
    \item{\code{dataPoints}:}{a numeric vector containing data samples within the \code{[lower.limit,upper.limit]} interval. These data samples are used to obtain the kernel estimator}
    \item{\code{b}:}{the bandwidth of the kernel estimator}
    \item{\code{modified}:}{if \code{TRUE}, the modified version of the kernel estimator is used}
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
    \item{getmodified}{See \code{"\link[=getmodified]{getmodified}"} for details} 
	 }
}
\author{
Guzman Santafe, Borja Calvo and Aritz Perez
}
\examples{
# create the model 
kernel.noModified <- chen99Kernel(dataPoints = tuna.r, b = 0.01, modified = FALSE)
kernel.Modified <- chen99Kernel(dataPoints = tuna.r, b = 0.01, modified = TRUE)

# examples of usual functions
density(kernel.noModified,0.5)
density(kernel.Modified,0.5)

distribution(kernel.noModified,1,discreteApproximation=FALSE)
distribution(kernel.noModified,1,discreteApproximation=TRUE)
 
distribution(kernel.Modified,1,discreteApproximation=FALSE)
distribution(kernel.Modified,1,discreteApproximation=TRUE)
 
# graphical representation
hist(tuna.r,freq=FALSE,main="Chen99 Kernels Tuna Data")
lines(kernel.noModified,col="red",lwd=2)
lines(kernel.Modified,col="blue",lwd=2)

# graphical representation using ggplot2 
graph <- gplot(list("KernelNoModified"=kernel.noModified,
                "KernelModified"=kernel.Modified),show=TRUE)
}

\references{
  Chen, S. X. (1999). Beta kernel estimators for density functions.
	\emph{Computational Statistics & Data Analysis}, 31, 131-145.
}

\keyword{classes}
