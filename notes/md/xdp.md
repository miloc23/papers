# The eXpress Data Path: Fast Programmable Packet Processing in the Operating System Kernel

## Summary
The eXpress Data Path (XDP) allows packets to be processed close to the hardware.
It is programmable by using eBPF programs to control what happens to packets.
The creation of XDP was motivated by poor performance of the Linux network stack in high packet environments.
Alternatives such as DPDK achieve greater performance, but lack some of the features of XDP such as reprogramability, and stablity/safety.

## Opinion

I think this is a good paper.
It must battle the excellent performance of DPDK by presenting compelling features to make up for the performance delta.
I think it mostly presents these features, but they could be more present throughout the narrative of the work.

### Quality as a Paper

It is pretty well organized and cohesive.
The section titles are boring, but on a first read the descrption of the evaluations is nice.
The figures and listings they have throughout help their case.

### Quality as an Idea

I think the idea is good.
I don't know how difficult it is to use DPDK though.
It seems like a huge barrier to entry to have to re-create so many networking constructs in user-space.
XDP eliminates a lot of that barrier, but at the cost of some performance.

It is interesting how it incorporates parts of kernel-bypass without fully bypassing the kernel.

### Do I like it

Yes I like the paper and the idea.
It seems like a good idea with lots of use cases.
They wanted a system that integrated well with Linux, so they used that as a guiding design principle, which is the way it must be done to integrate into a system as mature as Linux.

## What Problem is it Trying to Solve

The Linux kernel networking stack is too solve for high packet enviornments.

## How does their approach differ from previous  ones

Other approaches like DPDK use kernel-bypass exclusively to achieve better performance.
XDP does not bypass the kernel, but it can bypass the kernel networking stack.
For enviornments with high packet needs, small performance penalties can drastically reduce the performance of the system.
The linux kernel stack is full of these, so bypassing it early can greatly improve performance.

The approach also functions in software, rather than in hardware with something like an FPGA or ASIC.

## How much previous work do I know about
I know alot about the eBPF stuff, but none of the networking type things.
I've heard about DPDK.

### To Read Related Works

-  Comparison of Frameworks for High-Performance Packet IO.
- MegaPipe: A New Programming Interface for Scalable Network I/O
- PacketShader: a GPU-accelerated software router !!
- RouteBricks: exploiting parallelism to scale software routers
-  P4: Programming protocol-independent packet processors.

### To Read Works that Cite XDP

- OXDP: Offloading XDP to SmartNIC for Accelerating Packet Processing
- Comparing User Space and In-Kernel Packet Processing for Edge Data Centers
- I/O Is Faster Than the CPU: Let's Partition Resources and Eliminate (Most) OS Abstractions



## Does it Work?

Yes!
The results shown in the paper are very promising.
The ease of integration, programability, and safety given by XDP, along with the performance it offers presents a compelling case for XDP.

## What could be improved?

1. The performance delta between DPDK and XDP is still there, so that could be improved.
2. Could more processing be done in BPF program outside of the kernel?
3. We inherit eBPF security concerns and verifier constraints.
4. What is the support for XDP like in 2023, 5 years after the paper?

