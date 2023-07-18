# The benefits and costs of writing a POSIX kernel in a high level programming language

## Summary
This paper is about writing a POSIX compatible kernel using the high level language Go.
The authors found that using a high level language made programming the system subjectively easier, and also worked to avoid some number of safety bugs in the kernel.
However, they also found that the performance was not as good as using a language like C.
Depending on the use case of the kernel, using a high level language may be appropriate for programming a kernel.

## Opinion
I liked the paper.
It does a good job motivating why the use of Go is an interesting choice for writing a kernel.
The POSIX compatibility part was interesting because it allowed a better comparision between Biscuit and Linux.
The authors could have motivated why they were writing the kernel in Go a bit better.
They claim that it reduces a class of bugs which is great, but it feels like there should be more reasons.

They had a really great section dealing with the evaluation of their system.

### Quality as a Paper

### Quality as an Idea

### Do I like it

## What Problem is it Trying to Solve
The paper is investigating whether or not it is feasible to write a POSIX kernel using a high level langauge.
Traditional operating system implementation wisdom says that it is not feasible for performance reasons and interface reasons.
Some high level languages are difficult to bend to handle the low level details needed for a kernel.
But others can do that, and they provide features that C does not such as garbage collection or other memory safety features.

## How does their approach differ from previous  ones
They used Go for their programming language.

They also used a static analysis method to better determine how much memory syscalls would need to be allocated to help reduce teh amount of performance overhead that GC has.

## How much previous work do I know about
I've read about Theseus and SPIN which are other operating systems.

To Read:

- Pilot: An operating system for a personal computer
- A LISP machine
- List processing in real time on a serial computer.
- Techniques for the design of Java operating systems.

## Does it Work?
Yes.
The system can run real applications that are useful.
It does pay a performance penalty, and I'm not sure if the gains from using Go make that penalty worthwhile.
The authors do note that some of the performance differential is simply due to optimizations that were made in Linux kernel that were not implemented in Biscuit for no technical reason.
The system also requires significantly extra memory in order to function best.
The authors claim something like 2 to 3 times extra heap memory.

## What could be improved?
More optimzations could be made in the system to improve it.

To me it seems like if we are using a high level language, we should be doing something other than just trying to make it C.
Maybe this means moving away from POSIX compatibility, but there should be some draw to using Go.
I get that the bugs are ever present in C code bases, but it always struck me as odd or not as important. For example, there were also bugs present in the Go packages?
Can we ever really get away from these bugs?
I should learn more about how bad these bugs can be.


