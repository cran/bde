\name{density}
\alias{density}
\alias{density-method}
\alias{density,BoundedDensity-method}
\alias{density,Chen99Kernel-method}
\alias{density,MicroBetaChen99Kernel-method}
\alias{density,MacroBetaChen99Kernel-method}
\alias{density,BoundaryKernel-method}
\alias{density,NoBoundaryKernel-method}
\alias{density,Muller91BoundaryKernel-method}
\alias{density,Muller94BoundaryKernel-method}
\alias{density,NormalizedBoundaryKernel-method}
\alias{density,Vitale-method}
\alias{density,BrVitale-method}
\alias{density,KakizawaB1-method}
\alias{density,KakizawaB2-method}
\alias{density,KakizawaB3-method}
\alias{density,HirukawaJLNKernel-method}
\alias{density,HirukawaTSKernel-method}
\alias{density,MacroBetaHirukawaJLNKernel-method}
\alias{density,MacroBetaHirukawaTSKernel-method}
\alias{density,JonesCorrectionMuller91BoundaryKernel-method}
\alias{density,JonesCorrectionMuller94BoundaryKernel-method}

\title{Probability Density Function (pdf)}
\description{
 Density function for the given bounded density object.
}
\arguments{
\item{\code{x}}{A bounded density estimator. See all the accepted classes here by running the command \code{getSubclasses("BoundedDensity")}. This parameter is named \code{x} instead of \code{.Object} to agree with other already defined density methods}
\item{\code{values}}{Vector of points where the density function is evaluated. These points must be in the interval [\code{x@lower.limit,x@upper.limit}]. This parameter is named \code{values} instead of \code{x} to agree with other already defined density methods}
}

\section{Methods}{
\describe{
\item{\code{density(x,values)}}{
}
}}
\keyword{methods}
%\keyword{BoundedDensity}

