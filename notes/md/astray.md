# Extensible Kernels are Leading OS Research Astray

P. Druschel, V. S. Pai and W. Zwaenepoel, "Extensible kernels are leading OS research astray," Proceedings. The Sixth Workshop on Hot Topics in Operating Systems (Cat. No.97TB100133), Cape Cod, MA, USA, 1997, pp. 38-42, doi: 10.1109/HOTOS.1997.595179.


## Summary

Extensible operating systems seek to solve three main problems: 1. improve performance without giving up safety, 2. make deploying new OS innovations easier, and 3. managing OS complexity.
Current implementations of extensible operating systems do not reach this goal because they put their attention in the wrong place.
They focus on making kernel extensions safe so that they can be deployed, but they never end up doing anything for the three main ideas.
Instead of creating extensible operating systems for end use, the research community should create extensible operating systems that serve as a quick way to test and design new operating system features/ideas that can then be implemented in other operating systems in a non-extensible way.

## Opinion

I think the introduction is really good.
It clearly outlines a potential problem, analyzes why it is a problem, and then presents a solution.
I agree that the problem they talk about is real and valid at the time, and I think it may be even more valid today.
The operating system market is even more constrained now, so improvements to existing OS are much more likely to occur than a new OS entering the market.
So much software has been created for these OS that it is hard to imagine how a big paradigm shift, such as the kinds of extensible operating systems presented, could even happen.

Section 2 loses me a bit.
I understand that they want to motivate their idea, but it feels disconnected.
They are trying to say that a fully generalizable extension framework is not necessary for achieving the stated performance goals of extensible operating systems.
I think they do need to consider this aspect, and they do motivate why we don't need the general extensions, but they don't connect it to the idea of a research focused extensible operating system.
It feels like they shift gears fully from one idea to another idea.
In my opinion they shift away from the interesting idea to a much less interesting idea before fully exploring the first idea.

Section 2 needed to be about using an extensible operating system to develop some non-general extension, a deeper analysis of other existing extensible operating systems, or something like that instead of an analysis of a current problem.
Definitely the problem they look at was targeted by extensible operating systems, but that does not build the case they present in the introduction. 

### Quality as a Paper

To me the paper feels like two papers stapled together.
The connection between the first and second section is not clear enough.
Section 2 does address a real issue, but it just doesn't connect to section 1 well enough for me.

### Quality as an Idea

The idea of using extensible operating systems as a research tool instead of a production system is a really good idea.
We can skip trying to solve the extremely difficult problem of making user-supplied inherently non-safe code safe.
Instead, we get to focus on the important problems in OS design and implementation.

### Do I like it

I don't like the paper as a paper.
It does not present a cohesive enough story.


## What Problem is it Trying to Solve

The paper is trying to solve the problem of many extensible operating systems being created that do not really solve or improve on any of the goals that extensible operating systems are supposed to solve.

## How does their approach differ from previous ones

They suggest shifting the positioning of extensible operating systems from a product in themselves, to a tool for researchers to investigate OS design and implementation concepts.
Improvements generated using these extensible operating systems could then be incorporated in non-extensible operating systems.

## How much previous work do I know about

I've read SPIN, and have some familiarity with the kind of packet-filters they talk about.

To read:

1. Exokernel: An operating system architecture for application-level resource management.
2. Safe kernel extensions without runtime checking
3. Dealing with disaster: Surviving misbehaved kernel extensions
4. Efficient software-based fault isolation
