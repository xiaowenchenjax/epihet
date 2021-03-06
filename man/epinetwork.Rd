% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/epinetwork.R
\name{epinetwork}
\alias{epinetwork}
\title{Construct co-epihet network based on DEH loci.}
\usage{
epinetwork(node.type = "locus", DEH, compare.matrix, value = NULL, group,
  subtype, datTraits = NULL, annotation.obj, networktype = "signed",
  method = "pearson", prefix = NULL, mergeCutHeight = 0.25,
  minModuleSize = 30)
}
\arguments{
\item{node.type}{a character suggest node type in network. Possible values
are 'locus','gene'.}

\item{DEH}{the dataframe containing the chromosome number, loci and strand
information of DEH loci generated from diffHet() function.}

\item{compare.matrix}{The comparison matrix generated from
the compMatrix() function.}

\item{value}{The value to be used to identify DEH loci
Possible values are 'pdr', 'epipoly',and 'shannon'.}

\item{group}{The subtype group to be used to construct network.}

\item{subtype}{A dataframe containing the subtype information
for the samples in the comparison matrix. The row names should
be the names of the samples and there should be one column
containing the subtype information for each sample.}

\item{datTraits}{a dataframe containing the clinical traits for all patients
from the subtype group.}

\item{annotation.obj}{a GRanges object containing gene annotation
information.}

\item{networktype}{network type in WGCNA.}

\item{method}{character string specifying the correlation to be
used in WGCNA.}

\item{prefix}{character string containing the file name base for files
containing the consensus
topological overlaps in WGCNA.}

\item{mergeCutHeight}{a numeric, dendrogram cut height for module merging
(default: 0.25).}

\item{minModuleSize}{a numeric, minimum module size for module detection
in WGCNA (default: 30).}
}
\value{
a list, if node type is CpG site, it contains the epigenetic
heterogeneity matrix for patients
module information, gene.list which is a data frame containing genes with
genome region containing DEH loci from one module
if node type is gene,it contains the epigenetic heterogeneity matrix for
patients and module information.
}
\description{
Construct co-epihet network for DEH loci or for genes with
genome region containing DEH loci using WGCNA
and identify modules that are significantly associated with the measured
clinical traits for co-epihet DEH loci network,we identify genes with genome
region containing DEH loci in each module.
}
