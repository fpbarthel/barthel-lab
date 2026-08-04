---
layout: post
title: Telomere crisis converges on the nucleolus
image: /blog/data/nha-1.jpg
image_alt: Two multicolor FISH karyograms of crisis cells
tag: [Mimi Mbegbu, Yi-An Chen, Yue Hao, Noelle Fukushima, T. Rhyker Ranallo-Benavidez, Maria Kyriakidou, Floris Barthel]
---

Telomere crisis is an engine of genomic instability, driving the structural evolution of cancer genomes. Our new preprint finds this damage isn't random: it converges on the nucleolus and the chromosomes that build it.

To capture it, we grew normal human astrocytes with HPV E6/E7 (inactivating p53 and Rb) but no telomerase, so cells divide through progressive telomere erosion. We tracked them longitudinally from senescence bypass through crisis, an otherwise inaccessible window.

{% include figure.html src="/blog/data/nha-2.jpg" alt="The longitudinal growth curve showing the senescence and crisis growth plateaus" caption="Longitudinal growth curve showing the senescence and crisis growth plateaus." %}

Multicolor FISH revealed subclonal abnormalities largely invisible to short-read sequencing. The bias was striking: acrocentric chromosomes carried 41% of all abnormalities despite being 15% of the autosomal genome. Chr13 was abnormal in >92% of metaphases.

{% include figure.html src="/blog/data/nha-3.jpg" alt="Chromosomal abnormality catalog organized by type (deletions / translocations / fusions) across four clones showing an abundance of acrocentric involvement" caption="Chromosomal abnormality catalog organized by type (deletions, translocations, fusions) across four clones, showing an abundance of acrocentric involvement." %}

The rearrangements were strikingly dynamic. Chromosome 13 translocations were common early but transient, replaced by new partners at later passages, while whole-chromosome losses persisted. Crisis generates a shifting, subclonal landscape of damage.

{% include figure.html src="/blog/data/nha-4.jpg" alt="DAPI metaphase spreads with arrowheaded translocations, plus pie charts of shifting translocation composition" caption="DAPI metaphase spreads with arrowheaded translocations, alongside pie charts of shifting translocation composition across passages." %}

Why acrocentrics? Their short arms carry the NORs that nucleate the nucleolus. In crisis cells, nucleoli broke down: compact spheres gave way to dispersed, necklace-like structures, with rDNA transcription and processing decoupled.

{% include figure.html src="/blog/data/nha-5.jpg" alt="UBF/fibrillarin immunofluorescence, compact vs necklace nucleoli" caption="UBF and fibrillarin immunofluorescence: compact nucleoli give way to dispersed, necklace-like structures." %}

To probe nuclear organization, we used Hi-C. Standard pipelines discard the rare inter-chromosomal contacts at acrocentric arms, so we recovered them with [KaryoScope](/blog/karyoscope-preprint/), our alignment-free tool. These contacts were persistently depleted in crisis cells.

{% include figure.html src="/blog/data/nha-6.jpg" alt="KaryoScope Hi-C inter-chromosomal contact maps and the log2 fold-change map with the chr13 row/column in blue" caption="KaryoScope Hi-C inter-chromosomal contact maps, with the log2 fold-change map showing the chr13 row and column in blue." %}

We expected broad genomic instability. Instead, telomere crisis zeroed in on the acrocentrics, consistent with findings from Beth Sullivan's lab over a decade ago using dominant-negative TRF2 ([2010](https://doi.org/10.1371/journal.pgen.1001061), [2014](https://doi.org/10.1371/journal.pone.0092432)).

{% include figure.html src="/blog/data/nha-7.jpg" alt="Control vs dnTRF2 nucleolar necklace" caption="Control versus dnTRF2 nucleolar necklace, from the Sullivan lab work." %}

Together: telomere dysfunction preferentially destabilizes acrocentric chromosomes and disrupts the nucleolus they collectively build. The nucleolus emerges as a structural nexus linking telomere crisis to large-scale genome rearrangement.

Huge credit to co-first authors Mimi Mbegbu and Yi-An Chen, and to collaborators Pippa Cosper and Tianpeng Zhang.

**Read more:** [the paper](/publications/telomere-dysfunction-in-human-astrocytes-drives-acrocentric/) · [the preprint on bioRxiv](https://www.biorxiv.org/content/10.64898/2026.05.19.726354v1)

**Social media link:** [BlueSky](https://bsky.app/profile/florisbarthel.bsky.social/post/3mmhugyfb6k2q) · [Twitter](https://x.com/florisbarthel/status/2057937818220122138)
