# Computer Architecture Course Projects

## Table of Contents

- [Projects](#projects)
  - [CA1: Fixed Point 10-bit Divider](#ca1-fixed-point-10-bit-divider)
    - [Project Overview](#project-overview)
    - [Functionality](#functionality)
    - [Algorithm](#algorithm)
    - [How to Use](#how-to-use)
    - [Example Test Cases](#example-test-cases)
  - [CA2: Single-Cycle RISC-V Processor](#ca2-single-cycle-risc-v-processor)
    - [Project Overview](#project-overview-1)
    - [Functionality](#functionality-1)
    - [How to Use](#how-to-use-1)
    - [Example Test Cases](#example-test-cases-1)
- [Documentation](#documentation)
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

### CA2: Single-Cycle RISC-V Processor

#### Project Overview

**Description:**
This project involves designing a single-cycle RISC-V processor to execute a set of RISC-V instructions. For demonstration purposes, the processor is used to find the maximum value in a 10-element array of 32-bit unsigned integers. While this specific example focuses on array maximum finding, the processor's general-purpose nature means it can be adapted to perform various computational tasks based on the instructions provided.

**Status:**
🎉 Completed 🎉

#### Functionality

The single-cycle RISC-V processor supports a range of instruction types:

- **R-Type:** `add`, `sub`, `and`, `or`, `slt`, `sltu`
- **I-Type:** `lw`, `addi`, `xori`, `ori`, `slti`, `sltiu`, `jalr`
- **S-Type:** `sw`
- **J-Type:** `jal`
- **B-Type:** `beq`, `bne`, `blt`, `bge`
- **U-Type:** `lui`

#### How to Use

1. **Generating Test Cases:**
   - Open `Generator.ipynb` located in the `Extras` folder.
   - Run the cells to generate test cases.
   - This will produce files in the `test_cases` directory:
     - `arri.mem` with the array data in binary format.
     - `arrayi.txt` with array values, their binary representations, and the expected maximum value.

2. **Incorporating Test Cases into Simulation:**
   - Ensure that `data_mem.v` reads the `arri.mem` file.
   - Open your testbench file and confirm that it is set up to validate against `arrayi.txt`.

3. **Running the Simulation:**
   - Compile and execute your simulation.
   - Verify that the output aligns with the expected maximum value specified in `arrayi.txt`.

#### Example Test Cases

**Example 1:**
- **Input:**
  - `arr1.mem` contains binary data representing 10 unsigned integers.
- **Expected Output:**
  - `array1.txt` provides the array elements with their binary values and the maximum value at the end:
    ```
    ...
    2231429060 || 10000101000000001110011111000100
    4102770561 || 11110100100010110100111110000001
    Max: 4102770561 ,11110100100010110100111110000001
    ```

This output indicates that the maximum value in the array is `4102770561`, with the corresponding binary representation `11110100100010110100111110000001`.

### CA3: Multi-Cycle RISC-V Processor

#### Project Overview

**Description:**
This project involves designing a multi-cycle RISC-V processor to execute a set of RISC-V instructions. For demonstration purposes, the processor is used to find the maximum value in a 10-element array of 32-bit unsigned integers. While this specific example focuses on array maximum finding, the processor's general-purpose nature means it can be adapted to perform various computational tasks based on the instructions provided.

**Status:**
🎉 Completed 🎉

#### Functionality

The multi-cycle RISC-V processor supports a range of instruction types:

- **R-Type:** `add`, `sub`, `and`, `or`, `slt`, `sltu`
- **I-Type:** `lw`, `addi`, `xori`, `ori`, `slti`, `sltiu`, `jalr`
- **S-Type:** `sw`
- **J-Type:** `jal`
- **B-Type:** `beq`, `bne`, `blt`, `bge`
- **U-Type:** `lui`

#### How to Use

1. **Generating Test Cases:**
   - Open `Assembler&Generator.ipynb` located in the `Extras` folder.
   - Run the cells to generate test cases.
   - This will produce files in the `test_cases` and `test_cases2` directory:
     - `arri.mem` with the instruction and array data in binary format.
     - `arrayi.txt` with array values, their binary representations, and the expected maximum value.
   - Difference between `test_cases` and `test_cases2` is in the assembly code used for calculating the maximum value.

2. **Incorporating Test Cases into Simulation:**
   - Ensure that `InstrDataMemory.v` reads the `arri.mem` file.
   - Open your testbench file and confirm that it is set up to validate against `arrayi.txt`.

3. **Running the Simulation:**
   - Compile and execute your simulation.
   - Verify that the output aligns with the expected maximum value specified in `arrayi.txt`.

#### Example Test Cases

**Example 1:**
- **Input:**
  - `arr1.mem` contains binary data representing 10 unsigned integers.

- **Expected Output:**
  - `array1.txt` provides the array elements with their binary values and the maximum value at the end:
    ```
    ...
    1005692429 || 00111011111100011010011000001101
    3521873594 || 11010001111010111000011010111010
    Max: 3893853562 ,11101000000101110111110101111010
    ```

This output indicates that the maximum value in the array is `3893853562`, with the corresponding binary representation `11110100100010110100111110000001`.

## Documentation

All data path schemas and control unit tables for each CA project are located in the `CA` directory under `Extras/DP & CU`. Data Path Schemas display data flow diagrams, while Control Unit  outline issued control signals or the FSM for the control unit according to project characteristics.

## Acknowledgements

- Thanks to [Paria Pasehvarz](https://github.com/PariaPasehvarz) for their invaluable collaboration on the projects developed as part of our college coursework.
