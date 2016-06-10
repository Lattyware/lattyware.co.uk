---
layout: post
date: 2012-06-19T00:00:00+00:00
title: In search of the ultimate triple monitor configuration.
description: A quest for monitor real-estate.
---

For a while now I have had a triple monitor setup - three 24" monitors at 1920x1200 each. This is perfect for programming and pretty much all other tasks, but unfortunately support has been lacking for triple monitors.

In recent times, support for dual monitors has become very strong under Linux, with xrandr doing a good job at allowing for good configuration. However, it cannot handle multiple cards at once. As, until very recently, all cards had a maximum of two outputs you could use simultaneously, it was necessary to have two graphics cards in order to use triple monitors, which meant forgoing xrandr and falling back to xinerama, which meant loosing all 3D rendering (no desktop effects, no games, etc…), which sucked. It also broke a lot of things like screen recording.

Fortunately, things have changed. AMD and nVidia have started to fight it out for three or more displays on a single card (AMD doing up to 6, nVidia up to 4) - mainly with a focus on gaming. Unfortunately, this also meant that they were only putting it in powerful cards (gaming at such high resolutions requires a lot of umph). As I have a separate gaming computer, fitting a high end graphics card would be a lot of extra heat, noise and expense.

Again, fortunately, this has started to change - at least on AMD’s front. You can now pick up cards that support triple monitors for around £50 - which is what I did. Considering I was running two nVidia 210s before, which ran me around £20 each, it’s basically the same cost. The card I picked up was a Sapphire card designed with exactly this purpose in mind. The HD6450 Flex edition. This has two DVI outputs and an HDMI output (which can be converted to DVI with a simple cable) - in contrast to most Eyefinity (AMD’s term for their multi-monitor tech) cards, that require at least one DisplayPort output to be used. The reality is the card does this with an internal adaptor from DisplayPort to DVI. As one of my monitors supports DisplayPort, I didn’t really care too much about this, but I did like the fact that the card is passively cooled (no extra noise) and cheap. It’s even low profile (coming with an extra bracket for LP usage), so you could use it in a PC with very little room. It’s also a better card anyway - again, not important, especially when talking about such low-end cards, but it might make the desktop effects that bit smoother.

The great thing about this is it even works perfectly with the open source AMD drivers. That means I get all the nice extras like Kernel Mode Setting, and no binary blobs.

Now, it’s not quite perfect - xrandr configuration is a little odd, as it isn’t a permanent configuration - the assumption is the default configuration (shove the screens at their native resolution and mirror) will be right - with the multi-monitor support mainly aimed at laptops where you are likely to plug it in and configure, not want it there all the time. Fortunately, it’s an easy fix - just putting some commands into a script run when X starts works fine - for me with KDM - to set up the configuration as I want.

I now have the ideal setup. A single card, passive, 3D rendering, screen recording, KMS, an open driver and all for very little money. Can’t complain at that.
