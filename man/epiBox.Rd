% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/epiBox.R
\name{epiBox}
\alias{epiBox}
\title{Make Boxplot from Comparison Matrix}
\usage{
epiBox(compare.matrix, value, type, box.colors = NULL, add.points = FALSE,
  points.colors = NULL, pdf.height = 10, pdf.width = 10, sve = FALSE)
}
\arguments{
\item{compare.matrix}{The comparison matrix generated from
the compMatrix() function}

\item{value}{The value to be graphed in the boxplot. Possible
values are 'read', 'pdr', 'meth', 'epipoly', and 'shannon'}

\item{type}{A dataframe containing the type information
for the samples in the comparison matrix. The row names should
be the names of the samples and there should be one column
containing the type information for each sample.}

\item{box.colors}{A vector of colors to be used as the fill
color for each boxplot. If not entered, the default colors
of ggplot are used. (default: NULL)}

\item{add.points}{A boolean stating if the individual points for
each sample mean should be displayed over the box plots
(default: FALSE)}

\item{points.colors}{A vector of colors to be used as the color
of the individual points for each sample mean. One color is used
per subtype. (default: NULL)}

\item{pdf.height}{An integer representing the height (in inches)
of the outputted boxplot pdf file (default: 10)}

\item{pdf.width}{An integer representing the width (in inches) of
the outputted boxplot pdf file (default: 10)}

\item{sve}{A boolean to save the plot (default: FALSE)}
}
\value{
a data frame containing the mean epigenetic heterogeneity
for each sample
}
\description{
From a user-inputted value, finds the mean of
that value for each sample, then creates a boxplot
comparing the values for each subtype.
}
\examples{
comp.Matrix=data.frame(
p1=c(0.6,0.3,0.5,0.5,0.5,0.6,0.45,0.57,0.45,0.63,0.58,0.67,0.5,0.42,0.67),
p2=c(0.62,0.63,0.55,0.75,0.84,0.58,1,0.33,1,0.97,0.57,0.68,0.73,0.72,0.82),
p3=c(0.72,0.53,0.62,0.69,0.37,0.85,1,0.63,0.87,0.87,0.82,0.81,0.79,
0.62,0.68),
N1=c(0.15,0.24,0.15,0.26,0.34,0.32,0.23,0.14,0.26,0.32,0.12,0.16,0.31,
0.24,0.32),
N2=c(0.32,0.26,0.16,0.36,0.25,0.37,0.12,0.16,0.41,0.47,0.13,0.52,0.42,
0.41,0.23),
N3=c(0.21,0.16,0.32,0.16,0.36,0.27,0.24,0.26,0.11,0.27,0.39,0.5,0.4,
0.31,0.33),
type=rep(c("pdr","epipoly","shannon"),c(5,5,5)),
location=rep(c("chr22-327:350:361:364","chr22-755:761:771:773",
"chr22-761:771:773:781","chr22-821:837:844:849","chr22-838:845:850:858"),
3),stringsAsFactors =FALSE )

subtype = data.frame(Type= c(rep('CEBPA_sil', 3), rep('Normal', 3)),
row.names = colnames(comp.Matrix)[1:6],stringsAsFactors = FALSE)

epihet::epiBox(compare.matrix = comp.Matrix, value = 'epipoly',
type = subtype, box.colors = NULL, add.points = FALSE,
points.colors = NULL, pdf.height = 10, pdf.width = 10,
sve = FALSE)

}
