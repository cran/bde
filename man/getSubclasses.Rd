\name{getSubclasses}
\Rdversion{1.1}
%\docType{genericFunction}
\alias{getSubclasses}

\title{List of subclasses}
\description{
  This method returns a list containing the name of the class given as parameter and all the subclasses. Virtual classes are excluded from the list.
}
\usage{
getSubclasses(className)
}
\arguments{
   \item{className}{a string with the name of a S4 class}   
}
\examples{
# show the names of the class BoundedDensity and all its subclasses
getSubclasses("BoundedDensity")

# show the names of the class Chen99Kernel and all its subclasses
getSubclasses("Chen99Kernel")

}

\keyword{utils-methods}
