\name{gplot}
\alias{gplot}
\alias{gplot-methods}
\alias{gplot,list-method}
\alias{gplot,BoundedDensity-method}
\alias{gplot,KernelDensity-method}
\alias{gplot,Chen99Kernel-method}
\alias{gplot,MicroBetaChen99Kernel-method}
\alias{gplot,MacroBetaChen99Kernel-method}
\alias{gplot,BoundaryKernel-method}
\alias{gplot,NoBoundaryKernel-method}
\alias{gplot,Muller91BoundaryKernel-method}
\alias{gplot,JonesCorrectionMuller91BoundaryKernel-method}
\alias{gplot,Muller94BoundaryKernel-method}
\alias{gplot,JonesCorrectionMuller94BoundaryKernel-method}
\alias{gplot,NormalizedBoundaryKernel-method}
\alias{gplot,BernsteinPolynomials-method}
\alias{gplot,Vitale-method}
\alias{gplot,BrVitale-method}
\alias{gplot,KakizawaB1-method}
\alias{gplot,KakizawaB2-method}
\alias{gplot,KakizawaB3-method}
\alias{gplot,HirukawaJLNKernel-method}
\alias{gplot,HirukawaTSKernel-method}
\alias{gplot,MacroBetaHirukawaJLNKernel-method}
\alias{gplot,MacroBetaHirukawaTSKernel-method}


\title{Bounded Density Plotting based on ggplot2}
\description{
  Function to plot bounded density probability density functions.
}
\section{Methods}{
  \describe{
    
    \item{\code{gplot(.Object,show=FALSE,includePoints=FALSE,lwd=1,alpha=1)}}{
      %%  ~~describe this method here~~
    }
  }}
\arguments{
  \item{\code{.Object}}{A bounded density estimator or a list of bounded density estimators. See all the accepted classes here by running the command \code{getSubclasses("BoundedDensity")}.}
  \item{\code{show}}{Logical value. If \code{FALSE} the density of the \code{BoundedDensity} object in \code{.Object} is not plotted but only the \code{ggplot2} graphical object is returned. This object can be used for further modifications and plots. If \code{TRUE} \code{ggplot2} graphical object is returned and also the density is plotted.}
  \item{\code{includePoints}}{Logical value. It determines whether or not the point used to estimate the density (\code{dataPoints}) are included in the plot. Note that, in order to improve the visualization, the points are jittered in the Y axis. When the amount of points is very high, jittering is not enough; in that case, the \code{alpha} parameter can be used to control the transparency of the points.}
  \item{\code{lwd}}{Usual line width graphical parameter. See \code{?par} for more information}
  \item{\code{alpha}}{A value between 0 and 1 indicating the transparency of the points when they are included in the plot}  
}

\references{
  Wickham, H. (2009). \emph{ggplot2: Elegant Graphics for Data Analysis}.
  Springer.
  
}
\keyword{methods}
