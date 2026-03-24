# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Devon Humphrey, Matt Zhen

## Summary
Today’s lab had us create a sequential circuit that is composed of two demuxes, one for the enable (store) and another for the data (D) values, connected to four 8-bit memory bytes, and a multiplexer. The assembled circuit resembles a D-Latch, which we programmed into verilog and simulated on a Basys 3 board.  

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Verilog will have an error response when Q and ~Q remain latched, but the Enabler switches back to 0. This would normally simulate memory, instead Verilog will stop the loop. We need to implement Behavioral Verilog, using the keyword “reg” (register), to simulate memory. 

### What is the meaning of always @(*) in a sensitivity block?
The @(*) is intended to re-assess a sensitivity block every time it changes. If an input changes, it will run through the block and update the output. In our case, this would re-evaluate E every time it changes, and would update the output value for Q/~Q. 

### What importance is memory to digital circuits?
Memory is used in sequential circuits to store the previous state of a block, even when the Enable function is turned off. The element we were introduced to, and implemented, was the flip-flop function, which stored the previous state of the circuit while the enabler (E) was switched to 0. 
