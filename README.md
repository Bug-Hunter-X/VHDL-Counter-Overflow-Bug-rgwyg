# VHDL Counter Overflow Bug

This repository demonstrates a common but subtle bug in VHDL code: counter overflow. The provided VHDL code implements a simple counter, but lacks proper handling for the case when the counter reaches its maximum value. This leads to silent wrap-around behavior, potentially causing unexpected results in a larger system.

The `bug.vhdl` file contains the erroneous code, while `bugSolution.vhdl` provides a corrected version with overflow prevention.

## Bug Description
The original counter simply increments the `count` signal upon each rising clock edge. Once it reaches the upper limit (15), it wraps around to 0. While this might seem harmless, it can lead to errors if the counter value is used in calculations that depend on its monotonically increasing behavior.

## Solution
The corrected code adds a check to prevent the counter from incrementing beyond its upper limit. If the counter reaches its maximum value, it remains there until reset.