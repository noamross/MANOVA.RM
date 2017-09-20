#'MANOVA.RM: A package for calculating test statistics and their resampling versions for
#'heteroscedastic semi-parametric multivariate data or repeated measures designs.
#'
#'The MANOVA.RM package provides two important functions: MANOVA() and RM() which 
#'will be explained in detail below.
#'
#'@section MANOVA function: The MANOVA() function provides the Wald-type
#'  statistic (WTS), the ANOVA-type statistic (ATS) as well as a modified ANOVA-type statistic (MATS)
#'  as in Friedrich and Pauly (2017)
#'  for multivariate designs with metric data as described in 
#'  Konietschke et al. (2015). These are even applicable
#'  for non-normal error terms, different sample sizes and/or
#'  heteroscedastic variances. The MATS can even handle designs involving singular
#'  covariance matrices. The tests are implemented for designs with an arbitrary
#'  number of crossed factors or for nested designs. In addition to the
#'  asymptotic p-values, they also provide p-values based on resampling
#'  approaches (parametric or wild bootstrap).
#'  For further details, see \code{MANOVA}.
#'  
#'@section RM function: The RM() function provides the Wald-type
#'  statistic as well as the ANOVA-type statistic for repeated measures designs
#'  with metric data as described in Friedrich et al. (2017).
#'  These are even applicable for non-normal error terms and/or heteroscedastic
#'  variances. It is implemented for designs with an arbitrary number of
#'  whole-plot and sub-plot factors and allows for different sample sizes. In
#'  addition to the asymptotic p-values, it also provides p-values based on
#'  resampling approaches (Permutation, parametric bootstrap, Wild bootstrap).
#'  For further details, see \code{RM}.
#'  
#'@references Konietschke, F., Bathke, A. C., Harrar, S. W. and Pauly, M. (2015).
#'  Parametric and nonparametric bootstrap methods for general MANOVA. Journal
#'  of Multivariate Analysis, 140, 291-301.
#'  
#'  Friedrich, S., Brunner, E. and Pauly, M. (2017). Permuting longitudinal data
#'  in spite of the dependencies. Journal of Multivariate Analysis, 153, 255-265.
#'  
#'  Friedrich, S., Konietschke, F., Pauly, M. (2016). GFD - An
#'  R-package for the Analysis of General Factorial Designs. Accepted for publication in
#'  Journal of Statistical Software.
#'  
#'  Bathke, A., Friedrich, S., Konietschke, F., Pauly, M., Staffen, W., Strobl, N. 
#'  and Hoeller, Y. (2016). Using EEG, SPECT, and Multivariate Resampling Methods
#'  to Differentiate Between Alzheimer's and other Cognitive Impairments. 
#'  arXiv preprint arXiv: 1606.09004.
#'  
#'  Friedrich, S., and Pauly, M. (2017). MATS: Inference for potentially singular and
#'  heteroscedastic MANOVA. arXiv preprint arXiv:1704.03731.
#'  
#'@docType package
#'@name MANOVA.RM-package
NULL