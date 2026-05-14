# LDPC-Decoding-Using-Bit-Flipping-Algorithm-

## Overview

This project implements the Bit-Flipping decoding algorithm for Low-Density Parity-Check (LDPC) codes using MATLAB. The project focuses on error detection and correction in digital communication systems through syndrome checking and iterative decoding over GF(2).

The implementation simulates transmission errors in a Binary Symmetric Channel (BSC) and applies iterative bit-flipping to recover the original transmitted codeword.

---

## Communication Concepts

This project involves several concepts from digital communications and coding theory:

* Linear Block Codes
* Low-Density Parity-Check (LDPC) Codes
* Tanner Graph
* Syndrome Calculation
* Error Detection and Correction
* Binary Symmetric Channel (BSC)
* Galois Field GF(2)
* Iterative Bit-Flipping Decoding

---

## Project Objectives

* Understand the structure and operation of LDPC codes
* Analyze Tanner Graph based decoding
* Perform syndrome checking for error detection
* Implement iterative Bit-Flipping decoding in MATLAB
* Compare simulation results with manual calculations

---

## Decoding Process

The decoding algorithm follows these steps:

1. Receive the transmitted codeword with possible transmission errors
2. Compute the syndrome using the parity-check matrix
3. Identify parity-check violations
4. Generate error votes for each bit
5. Flip the bit with the highest number of error votes
6. Repeat until all parity checks are satisfied or maximum iterations are reached

---

## Features

* Syndrome calculation using parity-check matrix
* Error detection over GF(2)
* Iterative Bit-Flipping decoding
* MATLAB simulation for LDPC decoding
* Manual Tanner Graph analysis
* Error correction verification

---

## Tools and Technologies

* MATLAB
* Coding Theory
* Tanner Graph Analysis
* GF(2) Operations

---

## Example Simulation

Original transmitted codeword:

```text id="m9u3bc"
c = [0 0 1 0 1 1]
```

Received codeword after transmission error:

```text id="t2v5qe"
r = [1 0 1 0 1 1]
```

After iterative Bit-Flipping decoding:

```text id="v6n1xt"
Decoded result = [0 0 1 0 1 1]
```

The algorithm successfully detects and corrects the single-bit transmission error.

---

## How to Run

1. Open the MATLAB project folder
2. Run the main MATLAB script:

```matlab id="8r4d2k"
main.m
```

3. The program will:

* Compute syndrome values
* Generate error matrices
* Perform iterative bit-flipping
* Display decoding results

---

## Author

Dang Ba Tran Trung
VNUHCM – University of Science
Electronics and Telecommunications Engineering
