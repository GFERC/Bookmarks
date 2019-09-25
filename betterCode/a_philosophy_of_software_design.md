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

## Chapter 4 Modules Should Be Deep
Hide unnessasary details and make comman usage interface simple.

### What is a module?
we think of each module in two parts: an
interface and an implementation. The interface consists of everything that a
developer working in a different module must know in order to use the given
module.

### Formal and informal infomation 
the formal interface for a method is its signature, which includes
the names and types of its parameters, the type of its return value, and
information about exceptions thrown by the method. The formal interface for a class consists of the signatures for all of its public methods, plus the names and types
of any public variables.

Each interface also includes informal elements. These are not specified in a
way that can be understood or enforced by the programming language. The
informal parts of an interface include its high-level behavior, such as the fact that
a function deletes the file named by one of its arguments. If there are constraints
on the usage of a class (perhaps one method must be called before another),
these are also part of the class’s interface. In general, if a developer needs to
know a particular piece of information in order to use a module, then that
information is part of the module’s interface. The informal aspects of an
interface can only be described using comments, and the programming language
cannot ensure that the description is complete or accurate. This helps
to eliminate the “unknown unknowns” problem

## Chapter 5 Information Hiding (and Leakage)
### Information Hiding
Use encapsulation to hide knowledge from interface. Put them in implementation. Hide information wisely - only hide information that are 

If a piece of information is hidden, there are no dependencies on that information
outside the module containing the information, so a design change related to that
information will affect only the one module.

### Information leakage
One way to deal with information leakage is merging 2 classes together. Another possible approach is to pull the
information out of all of the affected classes and create a new class that
encapsulates just that information. However, this approach will be effective only
if you can find a simple interface that abstracts away from the details; if the new
class exposes most of the knowledge through its interface, then it won’t provide
much value (you’ve simply replaced back-door leakage with leakage through an
interface).

Information leakage
occurs when a design decision is reflected in multiple modules. This creates a
dependency between the modules: any change to that design decision will
require changes to all of the involved modules.

information can be leaked even if it doesn’t appear in a module’s
interface. Suppose two classes both have knowledge of a particular file format
(perhaps one class reads files in that format and the other class writes them).Even if neither class exposes that information in its interface, they both depend
on the file format: if the format changes, both classes will need to be modified.

When decomposing a system into modules, try not to be influenced by the
order in which operations will occur at runtime; that will lead you down the path
of temporal decomposition. focus on the
knowledge that’s needed to perform each task, not the order in which tasks
occur.

## Chapter 6 General-Purpose Modules
One of the most
important elements of software design is determining who needs to know what,
and when. When the details are important, it is better to make them explicit and
as obvious as possible.

some questions you can ask yourself, which will help you to find
the right balance between general-purpose and special-purpose for an interface:
1. What is the simplest interface that will cover all my current needs? If you
reduce the number of methods in an API without reducing its overall
capabilities, then you are probably creating more general-purpose methods. Reducing the number
of methods makes sense only as long as the API for each individual method
stays simple; if you have to introduce lots of additional arguments in order to
reduce the number of methods, then you may not really be simplifying things.
2. In how many situations will this method be used?
3. Is this API easy to use for my current needs? This question can help you to
determine when you have gone too far in making an API simple and generalpurpose.
If you have to write a lot of additional code to use a class for your
current purpose, that’s a red flag that the interface doesn’t provide the right
functionality.
