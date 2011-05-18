---

short_name:     "pinto:plos_2009"
authors:        [Nicolas Pinto, David Doukhan, James J. DiCarlo, David D. Cox]
type:           journal
venue:          "PLoS Computational Biology"
title:          "A High-Throughput Screening Approach to Discovering Good Forms of Biologically Inspired Visual Representation"
year:           2009
volume:         5
issue:          11
doi:            doi:10.1371/journal.pcbi.1000579
tags:           ['computer vision', 'featured']
link:           "http://ploscompbiol.org/article/info%3Adoi%2F10.1371%2Fjournal.pcbi.1000579"
supplemental_links:    
    - title:  "researchcast"
      url:    "http://vimeo.com/7945275"
    - title:  "Science Editor's Choice"
      url:  "http://www.sciencemag.org/cgi/content/full/327/5961/13-d?rss=1)"
PMID:           19956750
---

While many models of biological object recognition share a common set of "broad-stroke" properties, the performance of any one model depends strongly on the choice of parameters in a particular instantiation of that model--e.g., the number of units per layer, the size of pooling kernels, exponents in normalization operations, etc. Since the number of such parameters (explicit or implicit) is typically large and the computational cost of evaluating one particular parameter set is high, the space of possible model instantiations goes largely unexplored. Thus, when a model fails to approach the abilities of biological visual systems, we are left uncertain whether this failure is because we are missing a fundamental idea or because the correct "parts" have not been tuned correctly, assembled at sufficient scale, or provided with enough training. Here, we present a high-throughput approach to the exploration of such parameter sets, leveraging recent advances in stream processing hardware (high-end NVIDIA graphic cards and the PlayStation 3's IBM Cell Processor). In analogy to high-throughput screening approaches in molecular biology and genetics, we explored thousands of potential network architectures and parameter instantiations, screening those that show promising object recognition performance for further analysis. We show that this approach can yield significant, reproducible gains in performance across an array of basic object recognition tasks, consistently outperforming a variety of state-of-the-art purpose-built vision systems from the literature. As the scale of available computational power continues to expand, we argue that this approach has the potential to greatly accelerate progress in both artificial vision and our understanding of the computational underpinning of biological vision.