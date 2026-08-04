---
layout: post
title: A big KaryoScope update, and HG002 in 21 minutes on a laptop
image: /blog/data/hks-1-macbook.jpg
image_alt: MacBook laptop showing KaryoScope actively running alongside the final output karyotype plots
tag: [T. Rhyker Ranallo-Benavidez, Floris Barthel]
---

Excited to share a big KaryoScope update this past week: the HKS k-mer backend is now integrated, and you can build databases for any features of interest. The complete Human Pangenome Reference Consortium HG002 assembly (~6.3 Gbp) now annotates in 21 minutes on a MacBook Pro.

Some run statistics: peak 941% CPU across 10 threads, peak 10.2 GB RAM on an M1 Max. Broad plateaus are k-mer lookup, sharp bursts are hierarchy-aware smoothing, and each of the six feature sets appears as its own block.

{% include figure.html src="/blog/data/hks-2-usage.jpg" alt="CPU and RAM statistics for KaryoScope annotating the HG002 genome on a MacBook M1 laptop" caption="CPU and RAM usage for KaryoScope annotating the HG002 genome on a MacBook M1 Max." %}

Per feature set the cost is remarkably flat: 138 to 146 s of lookup each (chromosome, region, repeat, subtelomere, gene, acrocentric), plus a brief smoothing burst. Runtime scales linearly with feature sets queried. [Try it yourself.](https://gist.github.com/fpbarthel/6e9537f6c60188ba029bcbf397d2c6e9)

Feature sets are not tied to a genome: any annotation that tiles a reference can become one. Here is a database we built for the *Arabidopsis* Col-CEN T2T reference, with chromosome, gene, region, and repeat feature sets, including the CEN180 satellite arrays.

{% include figure.html src="/blog/data/hks-3-arabidopsis.jpg" alt="KaryoScope annotation for the arabidopsis genome shown across four feature sets" caption="KaryoScope annotation of the Arabidopsis Col-CEN T2T reference across four feature sets." %}

Getting KaryoScope off the cluster and onto a personal computer is a milestone we cared about. Genome analysis belongs to everyone, not just institutions and corporations that have the resources to maintain high-performance compute clusters.

The improved HKS index was developed by Jarno Alanko, Camille Marchet and Simon Puglisi. KaryoScope and its original KMC-derived data structure were developed by Rhyker, with our co-authors and the Human Pangenome Reference Consortium.

If you build a KaryoScope database for your organism of interest, we would love to hear about it.

**Read more:** [the HKS paper](/publications/hierarchical-genomic-feature-annotation-with-variable-length/) · [the KaryoScope paper](/publications/karyoscope-rapid-alignment-free-sequence-annotation-for-the/) · [the code on GitHub](https://github.com/barthel-lab/KaryoScope)

**Social media link:** [BlueSky](https://bsky.app/profile/florisbarthel.bsky.social/post/3mrpkjx7vyc2a) · [Twitter](https://x.com/florisbarthel/status/2082094589054161389) · [LinkedIn](https://www.linkedin.com/feed/update/urn:li:activity:7487863966535249920/)
