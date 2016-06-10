---
layout: post
date: 2012-03-01T00:00:00+00:00
title: Teaching CompSci - Code Reuse
description: Misleading teaching methods.
---

Something I have noticed as a big trend in Computer Science is the act of telling students to forgo the standard library when trying to solve tasks. I get this - when teaching someone the basics of CompSci, you have to start with basic problems, and, for obvious reasons, most of those have already been solved by the standard library.

This has lead to questions asking students to do things without using the standard library, and that’s fine. I get the purpose of that, it makes sense, and there is nothing inherently wrong with it. The issue is with the fact that it is not being made clear to students that this is an academic exercise. I constantly see people re-implementing trivial (or not-so-trivial) functions that are provided by the standard library, and constantly hear people referring to functions provided by a language as ‘cheating’ or 'taking the easy way out’.

Not reinventing the wheel is something that makes a good programmer. Code reuse has so many benefits - increased stability and less time working on a problem can only be a good thing, and yet I constantly see students getting this misunderstanding that they should implement everything by hand.

Does this mean people teaching should have to think up simple, and yet currently unsolved problems? Of course not. The answer is to simply state clearly, in every case you give a problem like this, that the optimal solution is to simply use the standard library, but for the case of this exercise, that isn’t allowed. This needs to be stated clearly, otherwise, you punish students for following good practice and finding the best solution.

There are [many](http://thedailywtf.com/articles/Making_Time_for_UNIX) [horror](http://thedailywtf.com/articles/C_0x2b__0x2b__does_enough_as_it_is) [stories](http://thedailywtf.com/articles/No-Letters-Allowed!) about reimplementing functionality, and I strongly believe that this kind of teaching causes these horrors.

So I implore all teachers and lecturers, make it clear that what you are asking is only for the purpose of the exercise, and bad practice.
