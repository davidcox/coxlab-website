---

short_name:     "pinto:fg_2011"
authors:        [Nicolas Pinto, David D. Cox]
type:           conference_paper
title:          "Beyond Simple Features: A Large-Scale Feature Search Approach to Unconstrained Face Recognition"
venue:          "IEEE Automatic Face and Gesture Recognition"
year:           2011
tags:           ['computer vision', 'featured']
pdf:            "fg2011_lfw.pdf"

---

Many	modern	computer	vision	algorithms	are built atop of a set of low-level feature operators (such as SIFT [1], [2]; HOG [3], [4]; or LBP [5], [6]) that transform raw pixel values into a representation better suited to subsequent processing and classification. While the choice of feature representation is often not central to the logic of a given algorithm, the quality of the feature representation can have critically important implications for performance. Here, we demonstrate a large-scale feature search approach to generating new, more powerful feature representations in which a multitude of complex, nonlinear, multilayer neuromorphic feature representations are randomly generated and screened to find those best suited for the task at hand. In particular, we show that a brute-force search can generate representations that, in combination with standard machine learning blending techniques, achieve state-of-the-art performance on the Labeled Faces in the Wild (LFW) [7] unconstrained face recognition challenge set. These representations outperform previous state-of-the-art approaches, in spite of requiring less training data and using a conceptually simpler machine learning backend. We argue that such large-scale-search-derived feature sets can play a synergistic role with other computer vision approaches by providing a richer base of features with which to work.