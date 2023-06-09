# 3-digit-decimal-counter-in-VHDL
 SUSTech EE332 Digital System Design

## functions
1) An asynchronous reset function using a push button to initialize the counter to 000;
2) A synchronous load function to set a start number of the counting; use a switch to turn on or turnoff the load mode, and use 12 switches to set the start number.
3) The counter increases by 1 for every 1 second during the counting mode.
4) Display the counting results on the 12 LEDs (4 LEDs represent 1 decimal digit).

In this exercise, the counter is required to increase 1 for every 1 second. However, the FPGA board provides only a 100MHz clock source, which is 108 times faster than the required clock. You need design circuits to slow down the clock, such that the counter may increase at a required rate.

## Prelab exercise

Design a component of a frequency divider that slow down the output by 108 times for a clock input, i.e., the frequency divider produces an output pulse for every 108 input pulses. Sketch the conceptual diagram and develop the VHDL code of the frequency divider.

![IMG_1570](https://user-images.githubusercontent.com/117464811/232362035-b4bc8392-524d-4bb8-8f03-196bbe345c96.png)

![Decimal Counter](https://user-images.githubusercontent.com/117464811/232362040-0499aabd-94f0-4415-8ced-60d63d9f6aa9.png)

## During the lab
There are two ways to make use of the output of the frequency divider in your design, one is to use its output signal as the clock, and the other is to use it as an enable signal. The first one actually is an asynchronous design, i.e., the registers in the circuits are controlled by more than 1 clock, and we should avoid such methods especially in a high-speed circuit design. Therefore, the second method serving as an enable signal should be used.

Refine the conceptual diagram of the 3-digit decimal counter on page 208, and develop the counter as a component.

A top module, instantiating the frequency divider and the 3-digit decimal counter, realizes the required functions.

Two-segment coding style is required for sequential circuits.

Implement and show your design on the Nexys 4DDR board.

## simulation

For the test bench design, refer to the example in pages 215 – 220.

### behavioral

![1](https://user-images.githubusercontent.com/117464811/232361768-eb32784e-99a4-48d9-b8a6-3e6e61fd2e88.png)

### post synthesis

![2](https://user-images.githubusercontent.com/117464811/232361836-363f4d87-5931-46bd-9e43-d526b5ed3ba6.png)

![3](https://user-images.githubusercontent.com/117464811/232361855-6a56fa06-5846-42d7-a669-38c66d89c628.png)

### post implementation

![4](https://user-images.githubusercontent.com/117464811/232361905-75b81833-4337-42ea-a917-0526a79ef641.png)

![5](https://user-images.githubusercontent.com/117464811/232361921-fe137289-af22-45f5-868e-1165e7fa6126.png)
