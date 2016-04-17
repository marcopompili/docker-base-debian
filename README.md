# docker-debian-minit

Base docker image based on Debian Jessie.

[![](https://badge.imagelayers.io/emarcs/debian-minit:latest.svg)](https://imagelayers.io/?images=emarcs/debian-minit:latest 'Get your own badge on imagelayers.io')

This is a minimal Debian image used on my other images
based on Debian.

## Installation

Simply pull the image from docker hub:

```sh
docker pull emarcs/debian-minit
```

## The PID 1 zombie reaper problem

This image uses minit for solving the PID 1 problem
on Debian.

For more informations about this problem check the
[Docker and the PID 1 zombie reaping](https://blog.phusion.nl/2015/01/20/docker-and-the-pid-1-zombie-reaping-problem/)
article for more details.

## Using minit

This image doesn't use baseimage-docker for solving the PID 1
problem. I consider baseimage-docker to be immensely useful but
sometime a little too much for simpler images like this one.

So I adopted a minimal solution called minit, more informations about
minit can be found on this article:
[Multiple processes inside Docker](http://blog.chazomatic.us/2014/06/18/multiple-processes-inside-docker/).

## Fixing the apt-get warnings

While installing some packages apt-get was showing warning messages
during configuration of the packages, installing apt-utils seems to
fix this problem. Found out about this on [this docker image](https://github.com/tozd/docker-base).
