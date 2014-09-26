---
title:      PubFig83 Face Identification Data Set
short_name:     pubfig83
type:       dataset
url:        https://dl.dropboxusercontent.com/u/275083/pubfig83.zip
related_publications:   ["2011_pinto_cvpr", "2011_pinto_fg", "2009_pinto_cvpr"]
banner:                 'probe_banner.jpg'
order:                  0
---

<% content_for :please_cite do %>
Nicolas Pinto, Zak Stone, Todd Zickler, David D. Cox (2011)
Scaling-up Biologically-Inspired Computer Vision: A Case-Study on Facebook
IEEE Computer Vision and Pattern Recognition,Workshop on Biologically Consistent Vision
<% end %>

<% content_for :summary do %>
PubFig83 is a curated, reconfigured subset of the <a href="http://www.cs.columbia.edu/CAVE/databases/pubfig">PubFig face dataset</a> from Columbia University. PubFig83 was created by Zak Stone in order to support n-way face identifiation experiments.
<% end %>


**PubFig83** is a curated subset of the [PubFig face dataset](http://www.cs.columbia.edu/CAVE/databases/pubfig/) from Columbia University (originally descirbed in [Kumar et al., ICCV 2009](http://www.cs.columbia.edu/CAVE/projects/faceverification/).  PubFig83 was created by Zak Stone, and is described in [Pinto et al., CVPRW 2011](http://www.coxlab.org/publications/2011_pinto_cvpr_ws/).

While PubFig was originally designed to support "verification-mode" face recognition experiments (i.e. "are these two face images of the same person?"), there are sufficient images in the larger set to construct a smaller "identification-mode" test set.  In this scenario, rather than asking whether two faces are the same or different, we ask the face recognition system to identify which of a set of 83 previously-seen faces a new example face is.  Up to 100 previously labelled examples are available for each of the 83 individuals included in the set.  Such identification-mode tests are particularly interesting in the age of Facebook, where large quantities of collaboratively labeled face images are routinely available.

The <a href="https://dl.dropboxusercontent.com/u/275083/pubfig83.zip">PubFig83</a> set provides 100 images each of 83 celebrities. Effort has been made to remove near duplicates (the original PubFig set, by its large-scale nature contains quite a few), and the images have been curated to avoid dead links.  That said, the set does contain a small number of labeling errors, where individuals have been labeled with the incorrect name or where the OpenCV detection process resulted in an erroneous crop of the face.  For consistency with previous literature, these images have been left in, though known error are included in the readme.txt file.
