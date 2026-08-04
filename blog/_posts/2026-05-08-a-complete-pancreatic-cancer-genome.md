---
layout: post
title: A complete human pancreatic cancer genome
image: /blog/data/hg008-1-karyotype-banner.jpg
image_alt: Side-by-side computational and traditional multi-color karyotype for HG008T
tag: [Floris Barthel, T. Rhyker Ranallo-Benavidez, Maryam Jehangir]
---

Excited to contribute to a new preprint led by Justin Zook and the NIST/GIAB team: "A complete human pancreatic cancer genome", the first near-complete, haplotype-resolved tumor cell line assembly (HG008-T, hypodiploid PDAC).

Our lab contributed via [KaryoScope](/blog/karyoscope-preprint/), our k-mer-based sequence annotation tool. It produced an ISCN-annotated karyotype of the tumor assembly that was concordant with KromaTiD dGH SCREEN cytogenetics across all 35 tumor chromosomes.

{% include figure.html src="/blog/data/hg008-2-karyoscope-vs-dgh.jpg" alt="Side-by-side computational and traditional multi-color karyotype for HG008T" caption="Side-by-side computational and traditional multi-color karyotype for HG008-T." %}

KaryoScope resolved a striking chromoplexy event linking chromosomes 3, 6, 7 and 11 into three hybrid tumor chromosomes, and pinpointed the chr6↔chr7 breakpoint deep inside the α-satellite array of both centromeres.

{% include figure.html src="/blog/data/hg008-3-chromoplexy.jpg" alt="Chromoplexy causing a complex series of events linking chromosomes 3, 6, 7, and 11 in three hybrid tumor chromosomes" caption="Chromoplexy causing a complex series of events linking chromosomes 3, 6, 7 and 11 in three hybrid tumor chromosomes." %}

That α-satellite fusion produced what turned out to be a putative functional dicentric chromosome: two CDRs ~1 Mbp apart on D7Z1 and D6Z1, beautifully characterized by [CenMAP](https://github.com/logsdon-lab/CenMAP) from the Glennis Logsdon lab.

{% include figure.html src="/blog/data/hg008-4-dicentric-cenmap.jpg" alt="CenMAP visualization of the 7p-6p dicentric chromosome" caption="CenMAP visualization of the 7p–6p dicentric chromosome." %}

KaryoScope also resolved two reciprocal translocations (chr12↔15, chr18↔X), foldback inversions, acrocentric short-arm rearrangements, and complex multi-chromosomal events; all reconciled against dGH ground truth. Check out the preprint for a complete overview of everything we observed.

{% include figure.html src="/blog/data/hg008-5-reciprocal-translocations.jpg" alt="KaryoScope visualization of two reciprocal translocations" caption="KaryoScope visualization of two reciprocal translocations." %}

Huge congrats to Justin Zook, Mikhail Kolmogorov, Glennis Logsdon, Chunlin Xiao and the full team, and to Rhyker for driving KaryoScope. A milestone resource for somatic variant benchmarking in repetitive regions of cancer genomes.

**Read more:** [the paper](/publications/a-complete-human-pancreatic-cancer-genome/) · [the preprint on bioRxiv](https://www.biorxiv.org/content/10.64898/2026.05.01.722316v1) · [our NAR paper that first featured KaryoScope](https://academic.oup.com/nar/article/54/8/gkag333/8663840)

**Social media link:** [BlueSky](https://bsky.app/profile/florisbarthel.bsky.social/post/3mle3v75bpk2k) · [Twitter](https://x.com/florisbarthel/status/2052805263556579565)
