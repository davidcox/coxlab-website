---

short_name:     "vig:eccv_2012"
title:          "Saliency-based Space-Variant Descriptor Sampling for Action Recognition"
authors:        [Eleonora Vig, Michael Dorr, David Cox]
type:           conference
venue:          "European Conference on Computer Vision"
year:           2012
tags:           ['computer vision']
pdf:            "eccv2012_vig.pdf"

---

Algorithms using “bag of features”-style video representations currently achieve state-of-the-art performance on action recognition tasks, such as the challenging Hollywood2 benchmark [1–3]. These algorithms are based on local spatiotemporal descriptors that can be extracted either sparsely (at interest points) or densely (on regular grids), with dense sampling typically leading to the best performance [1]. Here, we investigate the benefit of space-variant processing of inputs, inspired by attentional mechanisms in the human visual system. We employ saliency-mapping algorithms to find informative regions and descriptors corresponding to these regions are either used exclusively, or are given greater representational weight (additional codebook vectors). This approach is evaluated with three state-of-the-art action recognition algorithms [1–3], and using several saliency algorithms. We also use saliency maps derived from human eye movements to probe the limits of the approach. Saliency-based pruning allows up to 70% of descriptors to be discarded, while maintaining high performance on Hollywood2. Meanwhile, pruning of 20-50% (depending on model) can even improve recognition. Further improvements can be obtained by combining representations learned separately on salience-pruned and unpruned descriptor sets. Not surprisingly, using the human eye movement data gives the best mean Average Precision (mAP; 61.9%), providing a lower bound on what is possible with a high-quality saliency map. Even without such external data, the Dense Trajectories model [2] enhanced by automated saliency-based descriptor sampling achieves the best mAP (60.0%) reported on Hollywood2 to date.