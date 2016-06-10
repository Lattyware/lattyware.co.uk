---
layout: post
date: 2012-08-20T00:00:00+00:00
title: Mark and Recapture
description: Decorators for callbacks in Python.
---

Update: I have published a library for this on github, so if you find yourself wanting to use decorators this way, just grab [recap](https://github.com/Lattyware/recap).

Decorators are a nice little feature in Python, allowing you to transform functions on the fly in a method that looks nice in code. One use I find myself gravitating towards is as a callback marker - avoiding ugly ‘connect’ function calls. This is a great use that is easy to do, however it does have a downside - decorators happen before instantiation, meaning that the callbacks don’t have `self` filled.
My solution to this problem is the idea of a mark and recapture decorator. We create a decorator that marks a function, then, once the class is constructed, we recapture it.

~~~ python
def callback(*args):
  def decorate(f):
      try:
          f._marks.add(args)
      except AttributeError:
          f._marks = {args}
      return f
  return decorate
~~~

Here is our decorator. We take advantage of the fact that Python functions are first class objects, and simply mark them by adding an attribute to them. We use a set so that we can run the decorator multiple times to use the same function for multiple callbacks.

~~~ python
def connect_callbacks(obj):
    for _, f in inspect.getmembers(obj, inspect.ismethod):
        try:
            for mark in f.__func__._marks:
                connect(mark, f)
        except AttributeError:
             pass
~~~

This is out connection function. This searches through the given object and finds all the marked functions. We do this by trying to access the `_marks` attribute on the `__func__` attribute. The `__func__` attribute is the original, unbound function the method runs, which is the one we marked earlier. We then run connect (which would be your callback creating function) with the mark (which can be any data you want) and the function, or pass if it doesn’t have a mark. We can easily run this connection function in the constructor for our object and the mark and recapture pattern gives us what we want.
Follow [this link](https://ideone.com/KaEtH) for an example of the naive version (which gives us the unbound method) vs this method on ideone (which gives you the output too!), along with code highlighting.
