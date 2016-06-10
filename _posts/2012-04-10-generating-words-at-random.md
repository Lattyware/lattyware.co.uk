---
layout: post
date: 2012-04-10T00:00:00+00:00
title: Generating words at random.
description: What I learned from Ludum Dare 22.
---

I posted this up on [the Ludum Dare blog](http://ludumdare.com/compo/2012/04/10/generating-words-at-random-what-i-learnt-from-ludum-dare-22/) as well, but thought it’d go well here too.

So, I didn’t manage to finish Ludum Dare 22 as I had to travel home from Uni halfway through and ran out of time.

My aim was to create a procedurally generated universe and allow the player to travel around finding out if they are alone as sentient life in the given universe. Given the time issues I really didn’t get much done, but I did focus on a particular problem, I wanted to name planets so players could remember where they had been. How do you create words that are pronounceable without just having planets called ‘Fork’ and 'Television’. Words like these:

 * fanglas
 * jubbensetrier
 * amenet
 * moquiets
 * mystilaxation
 * consutey
 * untive
 * curchers
 * anchottollon
 * symborse
 * prasting
 * weeloats
 * dupliquding
 * autobency
 * proscolicends

Well, the answer came in the form of Markov chains, a cool little trick that allows you to do this quite simply. Afterwards this still intrigued me, and I finally had some time to finish up my script, `wordgenerator`.

It’s a Python library and command line application, so it’s usable by pretty much anyone. If you have trouble thinking up names for things in general, it can be a great help, and as a library it goes hand-in-hand with any procedurally generated content. It’s GPLv3ed, so feel free to use it in any way that fits the license. The above is actual output from my script. You can change the output via a variety of options (explained in the above link) and by changing the input dictionary of words to generate from, for example, using an Italian one:

 * impiate
 * aliersi
 * inaudartererai
 * ottardiscrerei
 * addoluccio
 * deredicassella
 * coibinarei
 * impresto
 * accreste
 * storano

While nothing revolutionary (Markov chains are pretty well known), the script performs pretty well and saves a bit of work. I think it’s pretty cool, and surprisingly funny to see the output you get, so if you find yourself needing names in your next Ludum Dare game, feel free to use it.
