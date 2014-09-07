---
title:  Ensembles of Deep Networks for Saliency 
related_publications:   ["2014_vig_cvpr"]
short_name:             vig_edn_saliency
primary_link:			/publications/2014_vig_cvpr/index.html
---

<% content_for :please_cite do %>
Eleonora Vig, Michael Dorr, David Cox (2014) Large-Scale Optimization of Hierarchical Features for Saliency Prediction in Natural Images
Computer Vision and Pattern Recognition.
<% end %>

<% content_for :summary do %>
Saliency prediction typically relies on hand-crafted (multiscale) features that are combined in different ways to form a “master” saliency map, which encodes local image conspicuity. Recent improvements to the state of the art on standard benchmarks such as MIT1003 have been achieved mostly by incrementally adding more and more hand-tuned features (such as car or face detectors) to existing models. In contrast, we here follow an entirely automatic data-driven approach that performs a large-scale search for optimal features. We identify those instances of a richly-parameterized bio-inspired model family (hierarchical neuromorphic networks) that successfully predict image saliency. Because of the high dimensionality of this parameter space, we use automated hyperparameter optimization to efficiently guide the search.
<% end %>


![](/images/vig_cvpr14_teaser.png)
Saliency prediction typically relies on hand-crafted (multiscale) features that are combined in different ways to form a “master” saliency map, which encodes local image conspicuity. Recent improvements to the state of the art on standard benchmarks such as MIT1003 have been achieved mostly by incrementally adding more and more hand-tuned features (such as car or face detectors) to existing models. In contrast, we here follow an entirely automatic data-driven approach that performs a large-scale search for optimal features. We identify those instances of a richly-parameterized bio-inspired model family (hierarchical neuromorphic networks) that successfully predict image saliency. Because of the high dimensionality of this parameter space, we use automated hyperparameter optimization to efficiently guide the search. The optimal blend of such multilayer features combined with a simple linear classifier achieves excellent performance on several image saliency benchmarks. Our models outperform the state of the art on MIT1003, on which features and classifiers are learned. Without additional training, these models generalize well to two other image saliency data sets, Toronto and NUSEF, despite their different image content. Finally, our algorithm scores best of all the 23 models evaluated to date on the MIT300 saliency challenge, which uses a hidden test set to facilitate an unbiased comparison.


