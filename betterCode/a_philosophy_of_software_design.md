## Preface
The most fundamental problem in computer science is problem decomposition: how to take a complex problem and divide it up into pieces that
can be solved independently.

## Chapter 1 and Chapter 2
### High level 2 ways to fighting complexity
The first approach is to eliminate complexity by making code simpler and more obvious. For example, complexity can be reduced by eliminating special cases or using identifiers in a consistent fashion.

The second approach to complexity is to encapsulate it, so that programmers can work on a system without being exposed to all of its complexity at once. This approach is called modular design. In modular design, a software system is divided up into modules, such as classes in an object-oriented language. The modules are designed to be relatively independent of each other, so that a programmer can work on one module without having to understand the details of other modules.
### Symptoms of complexity
1. Change amplification
2. Cognitive load
3. Unknown unknowns

## Chapter 3 Working Code Isn’t Enough (Strategic vs. Tactical Programming)
Strategic programming saves time faster than you think.

Some of the investments will be proactive. For example, it’s worth taking a
little extra time to find a simple design for each new class; rather than
implementing the first idea that comes to mind, try a couple of alternative
designs and pick the cleanest one. Try to imagine a few ways in which the
system might need to be changed in the future and make sure that will be easy
with your design. Writing good documentation is another example of a proactive
investment.

Other investments will be reactive. No matter how much you invest up front,
there will inevitably be mistakes in your design decisions. Over time, these
mistakes will become obvious. When you discover a design problem, don’t just
ignore it or patch around it; take a little extra time to fix it. If you program
strategically, you will continually make small improvements to the system
design. This is the opposite of tactical programming, where you are continually
adding small bits of complexity that cause problems in the future.
