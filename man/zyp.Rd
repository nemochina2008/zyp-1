\name{zyp}
\alias{zyp-package}
\alias{zyp}
\docType{package}
\title{ZYP Prewhitened Nonlinear Trend Analysis Package}
\description{
  This function includes two approaches to analyze for trend, the Zhang method and Yue and Pilon method. 
These differ in their approach to pre-whitening to removing lag-1 autocorrelation. The magnitude of the
trend is computed using the Theil-Sen approach (TSA).

In the Zhang method, trend is removed from the series if it is significant and the autocorrelation is
computed. This process is continued until the dfferences in the estimates of the slope and the AR(1) in
two consecutive iterations are smaller than 1 percent. The Mann-Kendall test for trend is then run on the 
resulting time series and TSA is used to compute the slope of the trend.

In the Yue and Pilon method, the slopes is estimated with the TSA, if almost equal to zero, then its
is not necessary to conduct the trend analysis. If it differs from zero, then it is assumed to be linear
and the data is detrended by the slope and the AR(1) is computed for the detrended series. This is
referred to as the Trend Free Pre-whitening (TFPW) procedure. The residuals should be an independent 
series. The trend and residuals are then blended together. The Mann-Kendall test is the applied to the
blended series to assess the significance of the trend.

One variance of this package, at least from the Yue and Pilon method, is
that by default the values used to compute significance are reinflated
by dividing by (1 - AR(1)). Empirically this provides better
results. However, if you do not desire this behaviour, it can be
controlled using the parameter 'preserve.range.for.sig.test'; setting
this to 'FALSE' should give results which follow the Yue and Pilon paper exactly.
}
\references{
\cite{Wang, X.L. and Swail, V.R., 2001. Changes in extreme wave heights
  in northern hemisphere oceans and related atmospheric circulation
  regimes. Journal of Climate, 14: 2204-2221. }

\cite{Yue, S., P. Pilon, B. Phinney and G. Cavadias, 2002. The influence
  of autocorrelation on the ability to detect trend in hydrological
  series. Hydrological Processes, 16: 1807-1829.}

\cite{Zhang, X., Vincent, L.A., Hogg, W.D. and Niitsoo, A.,
  2000. Temperature and Precipitation Trends in Canada during the
  20th Century. Atmosphere-Ocean 38(3): 395-429.}

\cite{Sen, P.K., 1968. Estimates of the Regression Coefficient Based on
  Kendall's Tau. Journal of the American Statistical Association
  Vol. 63, No. 324: 1379-1389.}
}
\seealso{
\code{\link{zyp.trend.csv}}, \code{\link{zyp.trend.vector}}.
}
\keyword{ts}
\keyword{robust}

