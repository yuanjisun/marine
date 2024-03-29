% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/U_238.R
\name{U_238}
\alias{U_238}
\title{Import CTD data}
\usage{
U_238(data, equation = 1, plot_it = TRUE)
}
\arguments{
\item{data}{The raw data read from CTD file.}

\item{equation}{Specify which method to be used in this calculation. The default value 1 refers to Owen's equation. Another option, 2, is Pates' equation.}

\item{plot_it}{TRUE/FALSE. TRUE means a depth profile of U-238 will be generated. FALSE means no figure will be generated.}
}
\value{
A list containing Uranium-238 activity in unit \code{dpm/L} and the depth profile figure. By default, the figure will be denerated
}
\description{
The purpose of this function is to calculate Uranium-238 activity in the seawater.
}
\details{
This function is based on \code{read_ctd()}, which is provided in this package. After getting raw data, this function can help you quickly get the Uranium-238 activity without going through complex data set.
}
\examples{
U_238(data, 1, FALSE)

}
