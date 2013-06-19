\name{distribution}
\alias{distribution}
\alias{distribution-methods}
\alias{distribution,BoundedDensity-method}
\alias{distribution,KernelDensity-method}
\alias{distribution,Chen99Kernel-method}
\alias{distribution,MicroBetaChen99Kernel-method}
\alias{distribution,MacroBetaChen99Kernel-method}
\alias{distribution,BoundaryKernel-method}
\alias{distribution,NoBoundaryKernel-method}
\alias{distribution,Muller91BoundaryKernel-method}
\alias{distribution,Muller94BoundaryKernel-method}
\alias{distribution,JonesCorrectionMuller91BoundaryKernel-method}
\alias{distribution,JonesCorrectionMuller94BoundaryKernel-method}
\alias{distribution,NormalizedBoundaryKernel-method}
\alias{distribution,BernsteinPolynomials-method}
\alias{distribution,Vitale-method}
\alias{distribution,BrVitale-method}
\alias{distribution,KakizawaB1-method}
\alias{distribution,KakizawaB2-method}
\alias{distribution,KakizawaB3-method}
\alias{distribution,HirukawaJLNKernel-method}
\alias{distribution,HirukawaTSKernel-method}
\alias{distribution,MacroBetaHirukawaJLNKernel-method}
\alias{distribution,MacroBetaHirukawaTSKernel-method}

\title{Cumulative Density Function (cdf)}
\description{
 Distribution function for the given bounded density object
}
\arguments{
\item{\code{.Object}}{A bounded density estimator. See all the accepted classes here by running the command \code{getSubclasses("BoundedDensity")}.}
\item{\code{x}}{Vector of points where the density function is evaluated. These points must be in the interval [\code{.Object@lower.limit,.Object@upper.limit}]}
\item{\code{discreteApproximation}}{Logical; if \code{TRUE} the distribution function is computed using a discrete approximation using the values cached in \code{dataPointsCache} and \code{densityCache}. Otherwise, the integral of the density function is evaluated.}
}
\details{
If \code{discreteApproximation} is not specified it assumes the default value \code{TRUE}. When the distribution function is used with a \code{BoundedDensity} object, \code{discreteApproximation} value is and a discrete approximation is always obtained.
}
\section{Methods}{
\describe{
\item{\code{distribution(.Object,x,discreteApproximation=TRUE)}}{
}
}}
\keyword{methods}
%\keyword{BoundedDensity}
