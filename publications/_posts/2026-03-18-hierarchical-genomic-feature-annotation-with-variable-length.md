---
layout: paper
title: Hierarchical genomic feature annotation with variable-length queries
image: /publications/data/hks.jpg
authors: Jarno N. Alanko, T. Rhyker Ranallo-Benavidez, Floris P. Barthel, Simon J. Puglisi, Camille Marchet
year: 2026
ref: Alanko et al. 2026. bioRxiv.
journal: bioRxiv. 2026
doi: 10.64898/2026.03.15.711907
github: https://github.com/jnalanko/HKS
---

K-mer-based methods are widely used for sequence classification in metagenomics, pangenomics, and RNA-seq analysis, but existing tools face important limitations: they typically require a fixed k-mer length chosen at index construction time, handle multi-matching k-mers (whose origin in the indexed data is ambiguous) in ad-hoc ways, and some resort to lossy approximations, complicating interpretation. We present HKS, a data structure for exact hierarchical variable-length k-mer annotation. Building on the Spectral Burrows-Wheeler Transform (SBWT), a single HKS index is constructed for a specified maximum query length s, and supports queries at any length k ≤ s. HKS associates each k-mer with exactly one label from a user-defined category hierarchy, where multi-matching k-mers are resolved to their most specific common node in the hierarchy. We formalize a feature assignment framework that partitions indexed k-mers into disjoint sets according to a user-defined category hierarchy. To recover specificity lost to multi-matching and novel k-mers, we introduce a hierarchy-aware smoothing algorithm that makes use of flanking sequence context. We validate the approach by assigning each query k-mer to a specific chromosome across human genome assemblies, including the T2T-CHM13v2.0 reference as a positive control and two diploid genomes of different ancestries (HG002, NA19185). Smoothing increases overall concordance from ~81% to ~97%, with residual errors attributable to known biological phenomena including acrocentric short-arm recombination and subtelomeric duplications. In performance benchmarks against Kraken2, HKS provides comparable query throughput while providing exact, lossless annotation across all k-mer lengths simultaneously from a single index. A prototype implementation is available at https://github.com/jnalanko/HKS.
