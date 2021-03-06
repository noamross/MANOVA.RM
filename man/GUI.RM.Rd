% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GUI.R
\name{GUI.RM}
\alias{GUI.RM}
\title{A graphical user interface for the RM() function}
\usage{
GUI.RM()
}
\description{
This function provides a graphical user interface for calculating statistical
tests in repeated measures designs.
}
\details{
The function produces a GUI for the calculation of the test statistics and 
for plotting. Data can be loaded via the "load data" button. The formula, 
number of resampling iterations (default: 10,000) and the significance level alpha
(default: 0.05) need to be specified. Furthermore, the number of sub-plot factors
and the column name specifying the subjects in the
data need to be provided.
For the resampling methods, the user can choose between a permutation approach (Friedrich et al. (2017)), a 
parametric bootstrap approach (Konietschke et al. (2015)) and a Wild bootstrap using Rademacher weights
(Bathke et al. (2016)).
If the plot option is chosen, an additional window opens containing information on the plots.
}

