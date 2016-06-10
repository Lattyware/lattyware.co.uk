---
layout: post
date: 2014-08-04T00:00:00+00:00
title: Javadocs Are Not Documentation
description: Not enough, at least.
---

Of course, my heading is sensationalist and strictly untrue - but it is true that the standard JavaDoc you see is barely worthy of the name ‘documentation’.

Documentation is hard and expensive to do right. Wriitng good documentation can often be harder than writing code, and it’s not something most programmers relish. However, we know it’s worthwhile. Good documentation makes code usable (for APIs), penetrable (for applications) and better (for all) - documenting your code forces you to think over it’s design, just as explaining it to someone in real life does.

I don’t think I need to say more to convince anyone good documentation is a good idea, so the question becomes what is good documentation?

The point I want to make with this post is that good documentation is not what JavaDocs supply. Let’s take a look at a JavaDoc:

[![A screenshot of the documentation for SAXParser.](/images/blog/javadoc.png)](https://docs.oracle.com/javase/7/docs/api/javax/xml/parsers/SAXParser.html)

This is for SAXParser - one of the most popular ways of parsing XML in the Java standard library. Can you, from that page, parse some XML? I definitely couldn’t - it’s straight off to find a tutorial or more documentation. In this case, there is [some more official documentation from oracle](https://docs.oracle.com/cd/B28359_01/appdev.111/b28394/adx_j_parser.htm).

This is terrible. Having documentation split like this is a sin that makes JavaDocs worse than no documentation so much of the time. To make good documentation this way, you need to:

Ensure your broad documentation is versioned the same way as your JavaDocs, and make it easy to swap between versions.

Ensure your broad documentation links to your API docs, and vice versa.

Encourage people to actually read both documents.

Actually write both documents.

Oracle manages to produce both documents, but that’s it. Most third party code I’ve seen does none. They publish their JavaDocs and call it documentation. It’s not. Alone, JavaDocs are just a convenient way to read through the definitions of the source code.

Some people try and shove all the detail of the broad documentation into their JavaDocs - this is almost as bad - it results in an unreadable heap, and bloats your source code - no doubt causing developers to fold comments away and never read them.

Good documentation needs to be curated, and needs to have two components - documentation from code structure and comments, and the broad documentation.

The idea of only producing reference documentation, and not broader documentation is like testing only with unit tests - it completely misses an entire dimension. For anything non-trivial (and hence, anything worth documenting) 'x takes y and gives z’ is useless.

So what is the answer? Personally, I have found the tool that does the job right is Sphinx. Sphinx allows exactly what I’ve mentioned above - curated and automatically generated documentation existing side-by-side.

[![A screenshot of the documentation for ElementTree](/images/blog/sphinx.png)](https://docs.python.org/3/library/xml.etree.elementtree.html)

(Surprise, surprise, I think Python did it right)

Sphinx is used for Python’s documentation, and it shows why it’s infinitely better. The documentation explains how to use the code first, then goes into the fine detail of reference (with more curated content mixed in where needed). This produces what I have found to be the best standard library documentation of any language.

And, if you look at Python projects, they tend to follow suit. The ecosystem is full of really well documented libraries and applications - while the Java standard is a JavaDoc with trivial comments at best. The damage JavaDoc has done to the Java community is huge in the way it has encouraged developers to let documentation fester.

Look closely and notice the stuff that makes your life easier - inherently you are encouraged to link through your documentation, the whole thing is versioned together, it’s virtually impossible to miss the broad documentation or the reference documentation - when you go in looking at one, you inherently see the other.

Do documentation right. I’m not saying you have to use sphinx (although it does support other languages, and will make your life easier), but just make sure to cover the bases. Ensure your broad documentation has the same status as your reference documentation. One without the other will hurt you more than you realise.

I also highly recommend checking out [Read the Docs](https://readthedocs.org/), an awesome site that hosts documentation for projects, all built around sphinx - it’s a great way to get your documentation somewhere easy to find and use, and it’s a great example - click through a few projects on there and see how much better, on average, curated documentation is.
