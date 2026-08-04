---
layout: post
title: "KaryoScope: bringing the genome's hardest regions within reach"
image: /blog/data/karyoscope-1-hg002-karyotype.jpg
image_alt: "KaryoScope karyotype of the HG002 diploid assembly. All 22 autosomes plus X and Y, each shown as paired haplotypes (h1, h2). Each chromosome has a full-length track colored by chromosome of origin, a centromere zoom panel showing satellite composition, and a subtelomere zoom panel. Legends map chromosomes, satellite families, and subtelomeric features to colors."
tag: [T. Rhyker Ranallo-Benavidez, Yi-An Chen, Floris Barthel]
---

The human genome's most variable and clinically important regions (centromeres, telomeres, and acrocentric short arms) have been the hardest to study at scale. Thrilled to share KaryoScope, our new preprint that brings them within reach.

Built on k-mer matching (short, fixed-length DNA fragments), KaryoScope annotates a complete diploid human genome at base-pair resolution in ~2 minutes, across repeats, satellite families, genes, and chromosome-end structure. That is ~300× faster than RepeatMasker.

{% include figure.html src="/blog/data/karyoscope-2-fish-analogy.jpg" alt="Schematic comparing FISH and KaryoScope workflows side by side in four parallel steps: feature definition, fragmentation, label assignment, and query. KaryoScope is presented as a computational analog of FISH." caption="KaryoScope as a computational analog of FISH: feature sets in place of cloning vectors, k-mer enumeration in place of fragmentation, labeled k-mer sets in place of fluorescent probes, and database lookup in place of in situ binding." %}

Robertsonian translocations are complex chromosomal rearrangements of acrocentric chromosomes. Adam Phillippy, Erik Garrison and Jennifer Gerton showed SST1 is the fusion substrate; KaryoScope confirms this from k-mers alone.

{% include figure.html src="/blog/data/karyoscope-3-robertsonian.jpg" alt="KaryoScope annotation of three Robertsonian translocation assemblies, each row showing six progressively zooming panels from full contig down to 200 kb at the fusion site, with the SST1 satellite block visible at every fusion point." caption="Three Robertsonian translocation assemblies, each zoomed from full contig down to 200 kb at the fusion site. The SST1 satellite block (green) is visible at every fusion point." %}

FSHD1, a muscular dystrophy, is caused by structural changes in D4Z4, a complex subtelomeric repeat array on chromosomes 4q and 10q. Across hundreds of Human Pangenome Reference Consortium haplotypes, KaryoScope first catalogs D4Z4 diversity, including configurations previously not described.

{% include figure.html src="/blog/data/karyoscope-4-d4z4.jpg" alt="Pangenome-scale D4Z4 macrosatellite catalog from KaryoScope, with tracks for representative haplotypes across chromosomes 4q and 10q, waffle charts of structural category frequencies across 249 chr4 and 333 chr10 haplotypes, contingency tables of diploid combinations, and a scatterplot comparing repeat-unit counts between haplotypes." caption="D4Z4 structural categories across 249 chromosome 4 and 333 chromosome 10 haplotypes, spanning canonical, multi-array and mixed configurations." %}

Karen Miga and Glennis Logsdon have charted centromeres. KaryoScope adds pangenome-scale variation: a chr9 megabase inversion and chr3/chr5 repeat losses, FISH-validated.

{% include figure.html src="/blog/data/karyoscope-5-centromere.jpg" alt="Pangenome-scale centromere structural variation: a dendrogram of centromere haplotype cluster representatives across chromosomes 1 to 22 and X with satellite composition profiles, FISH validation of three minor centromere subtypes, and haplotype frequency tables." caption="Centromere haplotype clusters across chromosomes 1–22 and X, with FISH validation of the chr3 HSat1A deletion, the chr5 HSat3 loss and the chr9 HSat3 inversion." %}

KaryoScope works on any sequence input, beyond diploid assemblies: long reads, short reads, Hi-C, RNA-seq, metagenomics. It detects SVs from individual long reads (manuscripts forthcoming) and dissects [cancer genome assemblies](/blog/a-complete-pancreatic-cancer-genome/).

{% include figure.html src="/blog/data/karyoscope-6-hg008.jpg" alt="KaryoScope karyotype of the HG008 pancreatic tumor assembly, with each chromosome shown as a track colored by chromosome of origin, revealing derivative chromosomes from reciprocal translocations, dicentric chromosomes, and chromoplexy-like patterns." caption="The HG008 pancreatic tumor assembly: derivative chromosomes from reciprocal translocations, dicentrics, and chromoplexy-like patterns where blocks of one chromosome appear within another." %}

KaryoScope analyzes sequence data faster than instruments from PacBio, Oxford Nanopore, Illumina and Element Biosciences (and others) produce it, on laptop-grade hardware. Real-time, on-instrument sequence annotation is within reach.

{% include figure.html src="/blog/data/karyoscope-7-scaling.jpg" alt="Four-panel performance scaling of KaryoScope across CPU thread counts, showing feature-ID lookup throughput and peak memory for the KMC and HKS k-mer backends, and smoothing-step runtime and memory for the Python and Rust implementations." caption="Scaling across CPU thread counts for both k-mer backends. HKS and the Rust smoothing implementation each scale substantially better than KMC and Python." %}

Annotation is the pangenome era's bottleneck, and KaryoScope is our step toward dissolving it: a framework that any annotation source can plug into. Tremendous thanks to Rhyker for leading this work, and to all co-authors.

**Read more:** [the paper](/publications/karyoscope-rapid-alignment-free-sequence-annotation-for-the/) · [the preprint on bioRxiv](https://www.biorxiv.org/content/10.64898/2026.05.15.725544v1) · [the code on GitHub](https://github.com/barthel-lab/KaryoScope)

**Social media link:** [BlueSky](https://bsky.app/profile/florisbarthel.bsky.social/post/3mm32cn444k2t) · [Twitter](https://x.com/florisbarthel/status/2056091046728126558) · [LinkedIn](https://www.linkedin.com/feed/update/urn:li:activity:7464506835966857216/)
