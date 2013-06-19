\name{bde}
\Rdversion{1.1}
%\docType{genericFunction}
\alias{bde}

\title{Generic bounded density constructor}
\description{
 Function to access all the methods
}
\usage{
bde(dataPoints,dataPointsCache=NULL,estimator,b=length(sample)^{-2/5}, 
    lower.limit=0, upper.limit=1,options=NULL)
}

\arguments{
  \item{dataPoints}{Vector containing the points to be used to estimate the density.}
  \item{dataPointsCache}{Points where the density has to be estimated. If omitted, 101 points equally distributed in the [lower.limit,upper.limit] interval are used}
  \item{estimator}{Density estimator to be used. This has to be one of the following:
    \itemize{
      \item{\code{"betakernel"}: }{Chen's beta kernel density estimator}
      \item{\code{"vitale"}: }{Vitale's Bernstein polynomial based estimator}
      \item{\code{"boundarykernel"}: }{Boundary kernel based density estimators, as proposed by Muller et al.}
      \item{\code{"kakizawa"}: }{Kakizawa's density estimators}
    }
  }
  \item{b}{Bandwidth to be used. Note that in the case of Vitale's estimator the m parameter is set at \code{1/b}}
  \item{lower.limit}{a numeric value for the lower limit of the bounded interval for the data}
  \item{upper.limit}{a numeric value for the upper limit of the bounded interval for the data. That is, the data is with the \code{[lower.limit,upper.limit]} interval} 
  \item{options}{A list containing the different options available for the estimators:}
    \itemize{
      
      \item{betakernel:}
        \itemize{
          \item{\code{"modified"}: }{a logical value indicating whether the modified kernel has to be used or not. False by default}
          \item{\code{"normalization"}: }{a string: \code{"none"}, to use the original kernels, \code{"densitywise"} to use the macrobeta kernels and \code{"kernelwise"} to use the microbeta kernels. If not specified, no normalization is used}
          \item{\code{"mbc"}: }{a string indicating the multiplicative bias correction to be used: \code{"none"}, no correction is used, \code{"jnl"} Hirukawa's JNL approach, \code{"ts"} Hirukawa's TS approach. If not specified, no correction is used}
          \item{\code{"c"}: }{a numeric value between 0 and 1 corresponding to the \code{c} parameter in the TS correction (it is only taken into consideration if TS correction is selected). Default value is set to 0.5}
      }
      
      \item{vitale:}
        \itemize{
          \item{\code{"biasreduced"}: }{a logical value. If true, Leblanc's bias reduced estimator is used; otherwise the original estimator is used. False by default}
        }
      
      \item{boundarykernel:}
        \itemize{
          \item{\code{"mu"}: }{numeric parameter to indicate the kind of kernel. Options are 0, for the rectangular function, 1 for Epanechnikov's kernel, 2 for the quadratic and 3 for the biquadratic. Default value is set at 1}
          \item{\code{"method"}: }{a string indicating the functions to be used: \code{"Muller94"} (default value), \code{"Muller91"}, \code{"Normalize"} or \code{"None"}}
          \item{\code{"corrected"}: }{a logical value indicating whether Jones' non-negativity correction should be used. By default it is set to false}
        }
        
      \item{kakizawa:}
        \itemize{
          \item{\code{"method"}: }{a string indicating the function to be used \code{"b1"}, \code{"b2"} or \code{"b3"} (default value).}
          \item{\code{"estimator"}: }{a Bounded Density estimator. See all accepted classes here with \code{getSubclasses("BoundedDensity")}. If no estimator is provided, a Muller94BoundaryKernel estimator with default parameters and the same dataPoints as those give for the Kakizawa estimator is used.}
          \item{\code{"gamma"}: }{in case that \code{b1} function is used the \code{gamma} parameter is required. This parameter takes 0.5 as default value.}
        }
      }
}
\keyword{constructor}
