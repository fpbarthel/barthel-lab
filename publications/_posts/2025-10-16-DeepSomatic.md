---
layout: paper
title: Accurate somatic small variant discovery for multiple sequencing technologies with DeepSomatic
image: /publications/data/deepsomatic.jpeg
authors: Jimin Park, Daniel E Cook, Pi-Chuan Chang, Alexey Kolesnikov, Lucas Brambrink, Juan Carlos Mier, Joshua Gardner, Brandy McNulty, Samuel Sacco, Ayse G Keskus, Asher Bryant, Tanveer Ahmad, Jyoti Shetty, Yongmei Zhao, Bao Tran, Giuseppe Narzisi, Adrienne Helland, Byunggil Yoo, Irina Pushel, Lisa A Lansdon, Chengpeng Bi, Adam Walter, Margaret Gibson, Tomi Pastinen, Rebecca Reiman, Sharvari Mankame, T Rhyker Ranallo-Benavidez, Christine Brown, Nicolas Robine, Floris P Barthel, Midhat S Farooqi, Karen H Miga, Andrew Carroll, Mikhail Kolmogorov, Benedict Paten, Kishwar Shafin
year: 2025
ref: Park et al. 2025. Nature Biotechnology.
journal: "Nature Biotechnology. 2025:1-10"
doi: 10.1038/s41587-025-02839-x
pmid: 41102444
---

Somatic variant detection is an integral part of cancer genomics analysis. While most methods have focused on short-read sequencing, long-read technologies offer potential advantages in repeat mapping and variant phasing. We present DeepSomatic, a deep-learning method for detecting somatic small nucleotide variations and insertions and deletions from both short-read and long-read data. The method has modes for whole-genome and whole-exome sequencing and can run on tumor-normal, tumor-only and formalin-fixed paraffin-embedded samples. To train DeepSomatic and help address the dearth of publicly available training and benchmarking data for somatic variant detection, we generated and make openly available the Cancer Standards Long-read Evaluation (CASTLE) dataset of six matched tumor-normal cell line pairs whole-genome sequenced with Illumina, PacBio HiFi and Oxford Nanopore Technologies, along with benchmark variant sets. Across samples, both cell line and patient-derived, and across short-read and long-read sequencing technologies, DeepSomatic consistently outperforms existing callers.
