---
layout: post
title: Arm-specific telomere length pushes astrocytoma genomes in two opposite directions
image: /blog/data/idh-2-model.jpg
image_alt: "Model contrasting two routes to structural change. On the short-telomere side, DNA damage signals through ATM and NHEJ to sister and non-sister chromatid fusions, producing breakend junctions. On the long-telomere side, a stalled replication fork and single-ended double-strand break signal through RAD52 to break-induced replication, producing hybrid genomes and ecDNA."
tag: [Maryam Jehangir, T. Rhyker Ranallo-Benavidez, Floris Barthel]
---

New preprint! We used Oxford Nanopore long-read sequencing to ask: does chromosome-arm-specific telomere length shape how IDH-mutant astrocytoma genomes evolve? Short answer: yes, and in two opposite directions.

{% include figure.html src="/blog/data/idh-1-association.jpg" alt="Heatmap of associations between telomere length metrics and structural outcomes. Rows: breakage and amplification, each scored on core and full sample sets. Columns: minimum, maximum and median telomere length. Breakage associates with shorter maximum telomere length; amplification associates with longer minimum and median telomere length." caption="Breakage tracks with shorter telomeres, amplification with longer ones, across core and full sample sets." %}

Our working model, shown above: short telomeres drive breakage via BFB cycles; long ALT-maintained telomeres coincide with ecDNA, potentially linked to replicative repair mechanisms.

Somatic SV breakpoints were enriched at telomeres and centromeres regardless of local telomere length, a constitutive layer of structural fragility replicated in external genomic datasets.

{% include figure.html src="/blog/data/idh-3-sv-compartments.jpg" alt="Four violin plots of somatic structural variant rate per megabase across centromeric, interstitial and telomeric compartments, for insertions, deletions, duplications and breakends. Insertions, deletions and duplications are elevated in telomeric and centromeric compartments relative to interstitial regions; breakends show no compartment preference." caption="Somatic SV rates per Mb across centromeric (CEN), interstitial (INT) and telomeric (TEL) compartments, for insertions, deletions, duplications and breakends." %}

This work was led by Maryam in the lab, with a great team of collaborators at Mayo Clinic, NCI and Weizmann.

**Read more:** [the paper](/publications/chromosome-arm-specific-telomere-length-governs-dual-modes-o/) · [the preprint on bioRxiv](https://www.biorxiv.org/content/10.64898/2026.04.22.720226v1)

**Social media link:** [BlueSky](https://bsky.app/profile/florisbarthel.bsky.social/post/3mk6qdewnsc25)
