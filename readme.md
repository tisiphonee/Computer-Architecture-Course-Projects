# Computer Architecture Course Projects

## Table of Contents

- [Projects](#projects)
  - [CA1: Fixed Point 10-bit Divider](#ca1-fixed-point-10-bit-divider)
    - [Project Overview](#project-overview)
    - [Functionality](#functionality)
    - [Algorithm](#algorithm)
    - [How to Use](#how-to-use)
    - [Example Test Cases](#example-test-cases)
- [Acknowledgements](#acknowledgements)

## Projects

### CA1: Fixed Point 10-bit Divider

#### Project Overview

**Description:**
This project involves designing a 10-bit fixed-point divider. The divider handles unsigned integers with a 6-bit integer part and a 4-bit fractional part. The design includes handling for division operations, overflow conditions, and zero-divisor scenarios. 

**Status:**
🎉 Completed 🎉

#### Functionality

The 10-bit fixed-point divider performs division using the following specifications:

- **Inputs:**
  - `a_in`: 10-bit dividend (6 bits integer part, 4 bits fractional part)
  - `b_in`: 10-bit divisor (6 bits integer part, 4 bits fractional part)
  - `start`: Command to initiate the division operation
  - `sclr`: Synchronous reset input
  - `clk`: Clock input signal (rising edge sensitive)

- **Outputs:**
  - `q_out`: 10-bit quotient (6 bits integer part, 4 bits fractional part)
  - `dvz`: Activated if divisor is zero
  - `ovf`: Activated if overflow occurs
  - `busy`: Indicates ongoing division operation
  - `valid`: Indicates completion of division operation for one clock cycle

#### Algorithm

The division algorithm is implemented as follows:

1. Initialize: 
   - `A(9:0)` = dividend
   - `B(9:0)` = divisor
   - `{ACC[10:0], Q[9:0]}` = `{10'b0, A, 1'b0}`

2. Perform division for `i = 0` to `13`:
   - If `ACC >= {1'b0, B}`:
     - Update `ACC_next = ACC - {1'b0, B}`
     - Update `{ACC_next, Q_next} = {ACC_next[9:0], Q, 1'b1}`
   - Else:
     - Update `{ACC_next, Q_next} = {ACC[9:0], Q, 1'b0}`
   - Check for overflow if `i == 9` and `Q_next[9:4] != 0`
   - Update `ACC` and `Q`

#### How to Use

1. **Generating Test Cases:**
   - Navigate to the `Extras/Test Case Generator` folder.
   - Run `Generator.py` to generate test cases.
   - The generated files will include `input.txt` for test cases and `output.txt` for the expected output.

2. **Incorporating Test Cases into Testbench:**
   - Open `TOP_tb.v`.
   - Copy the lines from `input.txt`.
   - Paste them under the `initial begin` block at line 15 of `TOP_tb.v`.

3. **Running the Simulation:**
   - Ensure your testbench is correctly set up with the test cases from `input.txt`.
   - Compile and run your simulation to verify the functionality.

#### Example Test Cases

**Example 1:**
- **Input:** 
  - `A = 0110000010`
  - `B = 0000010000`
- **Expected Output:** 
  - `Q = 0110000010`

**Example 2 (Overflow Case):**
- **Input:** 
  - `A = 0100111001`
  - `B = 0000001000`
- **Expected Output:**
  - `Q = OVERFLOW!`










## Acknowledgements

- Thanks to [Paria Pasehvarz](https://github.com/PariaPasehvarz) for their invaluable collaboration on the projects developed as part of our college coursework.

