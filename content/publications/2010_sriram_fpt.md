---
    
short_name:     "sriram:fpt_2010"
authors:        [Vinay Sriram, K. Tsoi, Wayne Luk, David D. Cox]
type:           conference_paper
title:          "Towards an Embedded Visual Object Recognition Processor"
venue:          "Field Programmable Technology"
year:           2010
tags:           ['computer vision', 'gpu', 'fpga']
pdf:            "fpt2010_final_manuscript.pdf"

---

Biologically-inspired machine vision algorithms – those that attempt to capture aspects of the computational architecture of the brain – have proven to be a promising class of algorithms for performing a variety of object and face recognition tasks. However these algorithms typically require a large number of arithmetic operations per image frame evaluated. Meanwhile, the increasing ubiquity of inexpensive cameras in a wide array of embedded devices presents an enormous opportunity for the deployment of embedded machine vision systems. As a first step towards an embedded implementation, we consider the main requirements for the design of an embedded processor for biologically-inspired object recognition and demonstrate an FPGA prototype of the V1-like algorithm, a simple biologically- inspired system from the literature [1], [2], [3]. We present a multiple instruction, single data (MISD) pipeline implementation of V1-like, and show that such designs are feasible in an FPGA context, particularly for small frame sizes (e.g. 100x100). In addition, we show that such an implementation offers good performance per unit silicon area and power dissipation in comparison to traditional CPU and GPU implementations. Finally, we discuss the constraints under which such an embedded strategy would be feasible for a more general biologically inspired face recognition system, and consider paths forward towards a wider range of possible embedded targets.