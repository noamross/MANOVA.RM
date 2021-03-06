% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RM-function.R
\name{RM}
\alias{RM}
\title{Tests for Repeated Measures in Semi-Parametric Factorial Designs}
\usage{
RM(formula, data, subject, no.subf = 1, iter = 10000, alpha = 0.05,
  resampling = "Perm", CPU, seed, CI.method = "t-quantile", dec = 3)
}
\arguments{
\item{formula}{A model \code{\link{formula}} object. The left hand side
contains the response variable and the right hand side contains the factor
variables of interest. An interaction term must be specified. The time variable
must be the last factor in the formula.}

\item{data}{A data.frame, list or environment containing the variables in 
\code{formula}. Data must be in long format.}

\item{subject}{The column name of the subjects in the data.}

\item{no.subf}{The number of sub-plot factors in the data, default is 1.}

\item{iter}{The number of iterations used for calculating the resampled 
statistic. The default option is 10,000.}

\item{alpha}{A number specifying the significance level; the default is 0.05.}

\item{resampling}{The resampling method to be used, one of "Perm" (randomly permute 
all observations), "paramBS" (parametric bootstrap approach) and "WildBS" 
(wild bootstrap approach with Rademacher weights). Except for the Wild Bootstrap,
all methods are applied to the WTS only.}

\item{CPU}{The number of cores used for parallel computing. If omitted, cores are
detected via \code{\link[parallel]{detectCores}}.}

\item{seed}{A random seed for the resampling procedure. If omitted, no 
reproducible seed is set.}

\item{CI.method}{The method for calculating the quantiles used for the confidence intervals, 
either "t-quantile" (the default) or "resampling" (the quantile of the resampled WTS).}

\item{dec}{Number of decimals the results should be rounded to. Default is 3.}
}
\value{
An \code{RM} object containing the following components:
\item{Descriptive}{Some descriptive statistics of the data for all factor
  level combinations. Displayed are the number of individuals per factor
  level combination, the mean and 100*(1-alpha)\% confidence
  intervals (based on t-quantiles).}
 \item{Covariance}{The estimated covariance matrix.} 
 \item{WTS}{The value of the WTS along with degrees of freedom of the central 
 chi-square distribution and 
  corresponding p-value.}
 \item{ATS}{The value of the ATS, degrees of freedom of the central F distribution 
 and the corresponding p-value.}
 \item{resampling}{p-values for the test statistics based on the chosen resampling
  approach.}
}
\description{
The RM() function calculates the Wald-type statistic (WTS), the ANOVA-type 
statistic (ATS) as well as resampling versions of these test statistics for 
semi-parametric repeated measures designs.
}
\details{
The RM() function provides the Wald-type
 statistic as well as the ANOVA-type statistic for repeated measures designs
 with metric data as described in Friedrich et al. (2017).
 These are even applicable for non-normal error terms and/or heteroscedastic
 variances. It is implemented for designs with an arbitrary number of whole-plot 
 and sub-plot factors and allows for different sample sizes. In addition to the
 asymptotic p-values, it also provides p-values based on resampling
 approaches.
}
\examples{
data(o2cons)
oxy <- RM(O2 ~ Group * Staphylococci * Time, data = o2cons, 
            subject = "Subject", no.subf = 2, iter = 100, resampling = "Perm", CPU = 1)
summary(oxy)
plot(oxy, factor = "Group") 
 
# For more details including the output of the examples also refer to the 
# package vignette.

# using the EEG data, consider additional within-subjects factors 'brain region' 
# and 'feature'
data(EEG)
\dontrun{
EEG_model <- RM(resp ~ sex * diagnosis * feature * region, 
               data = EEG, subject = "id", no.subf = 2, resampling = "WildBS",
               iter = 1000,  alpha = 0.01, CPU = 4, seed = 987, dec = 2)
summary(EEG_model)
}

}
\references{
Friedrich, S., Brunner, E. and Pauly, M. (2017). Permuting longitudinal
 data in spite of the dependencies. Journal of Multivariate Analysis, 153, 255-265.

 Bathke, A., Friedrich, S., Konietschke, F., Pauly, M., Staffen, W., Strobl, N.
  and Hoeller, Y. (2016). Using EEG, SPECT, and Multivariate Resampling Methods
  to Differentiate Between Alzheimer's and other Cognitive Impairments. 
  arXiv preprint arXiv:1606.09004

  Friedrich, S., Konietschke, F., Pauly, M. (2017). GFD - An 
  R-package for the Analysis of General Factorial Designs. 
  Journal of Statistical Software, 79(1), 1-18.
}
\seealso{
\code{\link[GFD]{GFD}}, \code{\link[nparLD]{nparLD}}, \code{\link{MANOVA}}
}

