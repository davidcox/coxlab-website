---
title:                  'An 18"x18"x18" Supercomputer'
related_publications:   ["2009_pinto_plos", "2011_pinto_fg"]
tags:                   [computation, "computer vision"]
highlight_picture:      16GPUs_220x160.jpg
---

**Update:** _This page is now several years old.  The system described here is still in service, though it has been eclipsed by systems with more recent GPUs.  We've left this page up for those interested in building multi-GPU systems._

## Summary

We’re interested in building computer vision systems that mimic the brain’s visual system. From a practical standpoint, this is difficult for at least two reasons. First, the brain is staggeringly large and complex (the human brain, for instance, contains over 100 billion neurons, with a large fraction being devoted to vision). Second, we don’t have access to a blueprint describing how things are put together or how they work. The best we can do is to [study natural occurring brains](/projects/physiology), to figure out how they work, and to build and try out candidate [artificial (computer-based) ones](/projects/computation). However, there are many to try out, and each one is computationally expensive to try. Both of these problems demand access to massive amounts of computational power.

To get access to the massive computational power that we need to undertake this effort, we have turned to a new, unconventional kind of supercomputer. In recent years, modern graphics cards have begun to outstrip traditional CPUs in terms of raw computational power, at least for some kind of problems, and we’ve been harnessing graphics processors to help with our efforts for several years now. 

A while back, [NVIDIA](http://nvidia.com) generously donated 8 of their impressive 9800GX2 graphics cards to our lab, to help us scale-up our efforts. The resulting machine is described below. With peak performance around 4 TFLOPS (4 trillion floating point operations per second), this little 18”x18”x18” cube is a wonderfully compact and inexpensive supercomputer.

This work is a collaboration between our lab, and the [DiCarlo Lab](http://dicarlolab.mit.edu) at MIT.

## Photos

[Flickr Gallery](http://www.flickr.com/photos/27920304@N06/) of Assembly and Finished Product

![](/images/16gpus_1.jpg)![](/images/16gpus_2.jpg)

## Specs

- 8 Dual GPU NVIDIA 9800GX2 Graphics cards (generously donated by NVIDIA)
- 2 MSI K9A2 Platinum 790FX Motherboards
- 2 AMD Phenom 9850 2.5 GHz Quad Core CPU
- 8GB OCZ Memory
- 2 Western Digital Velociraptor 300GB HDD
- 2 Rosewill CPU Coolers
- 14 120mm Cooling Fans
- Mountain Mods Duality Custom Case
- 2 850W Zalman ZM850-HP PSU
- 2 750W Silverstone PSU

