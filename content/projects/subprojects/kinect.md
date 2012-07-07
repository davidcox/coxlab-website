---
title:                  "The 'Drill of Depth' (Portable Kinect 3D Camera)"
tags:                   [methods]
highlight_picture:      kinect_220x160.jpg
resources:
    - title:            Github Repository
      url:              http://github.com/coxlab/freenect-stuff
---

![](/images/portable_kinect.jpg) 

by **Brett Graham** (graham at rowland dot harvard dot edu)<br/>
and **David Cox** (cox at rowland dot harvard dot edu)

<br/>
Like many others, we were excited when the Microsoft Kinect came out and was subsequently hacked. While it was fun to look at the output of the Kinect’s structured light imaging on a PC, we pretty quickly felt limited by the USB cord tether, and we wanted to see how well the depth imaging worked in a variety of environments. Thus was born the “Drill of Depth”. The Kinect runs on 12V @ 1A, and this was a great match for a handheld Li-ion drill, and the pistol grip of the drill made it easy to carry around. We slapped a Gumstix Overo Air single-board ARM computer running Linux, with a 4.3” touch screen display. The SBC is running a build of the popular libfreenect drivers, and we rigged everything up to capture a frame when the drill’s trigger is pulled.

We have genuinely legitimate scientific reasons for having done this (honest!), but for now we’re just posting this for fun. 

* [Gallery of Device Images](/galleries/kinect_device)
* [Gallery of Depth Images](/galleries/kinect_data) from around and about
* Github [repository](http://github.com/coxlab/freenect-stuff) with code, etc.
* A (work-in-progress) 3D mesh of John Harvard ([movie](/videos/john_harvard_3d),  [files](/files/john_harvard_3d/))

<br/>
UPDATE: we’ve been getting a number of questions about the Kinect’s ability to image outdoors. As the gallery indicates, it is, in fact, possible to get depth images outdoors, but there are limitations. The images here were taken at dusk, and it is very difficult to get any kind of meaningful depth image in full sunlight. That said, the Kinect performs surprisingly well in partial sunlight.

![](/images/john_harvard_depth.png)