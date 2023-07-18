# PacketShader: A GPU-Accelerated Software Router

## Summary

In the work they present a software router framework that uses GPU to accelerate packet processing.
This kind of packet processing/forwarding is highly parallelizable, so it can benefit greatly from the architecture of GPU's.
They show that using PacketShader gives substantially more performance than other software routing solutions.

## Opinion

This is an interesting paper with a good idea.
The GPU is well suited for a highly parallelizable task like packet routing.
Each packet can be sent on its way independently of other packets.
The tricky part is in creating interfaces to and from the GPU and NIC so that the benefits of processing packets in parallel outweigh the overhead of the data transfer and startup of GPU.
They do a good job motivating the bottlenecks and presenting their solutions to the problems.
Their evaluation seems like a good evaluation for synthetic tests.

### Quality as a Paper

I think it is a mostly well written paper, but some of the descriptions of their evalutaions were long and hard to get through.
The figures did a good job summarizing the data however which made up for the fact.
They never mentioned if they were the first to do this or if they were making an improvement to an older idea.

### Quality as an Idea

Really neat idea that seems very natural after reading the paper.
Of course packet routing is embarassingly parallelizalbe which makes it a good fit for GPU.

### Do I like it

Yes I like the paper.
It is a nice idea combined with good evaluations.


## What Problem is it Trying to Solve

Software routers suffer from CPU bottlenecks for compute intensive applications.
Performance can be scaled up by adding more CPU cores to the machine, but that is expensive.
GPU compute provides a way to increase performance in a cost effective way.

## How does their approach differ from previous  ones

Their approach to software routing is significantly different from previous ones.
I think they were the first to apply GPU to the problem.
They also perform the packet processing in user-space as opposed to kernel space.

## How much previous work do I know about

None.

## Does it Work?

Yes!
They see serious performance benefits from their system.
I would like to see how the numbers changed if they got rid of the IOH assymetry they described.

## What could be improved?

- They could talk more about how they designed the interface for their system to talk to the NIC and the GPU's.
- They could touch on if their approach could be applied to other networking tasks that are not routing.
- Could have more concrete comparisions to ASIC or other hardware solutions for routing.
- It would be interesting to see the evaluation results in a real world situation where the rate of incoming packets may be variable or come in bursts. Combine this with resource utilization and compare to just using CPU or other solutions.

