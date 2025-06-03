# Binary Search and Linear Search Comparison in MATLAB

This project demonstrates the implementation and performance comparison between **Binary Search** and **Linear Search** algorithms using MATLAB.

---

## 01. Binary Search Implementation

This script demonstrates a **binary search** function to find a specific element in a sorted array.

### Files:
- `binarySearch.m` — Contains the `binarySearch` function and its usage example.

### How It Works:
- A sorted array `a = [12, 13, 14, 15, 16, 17]` is searched for the value `14`.
- The `binarySearch` function returns the index of the target if found, otherwise returns `-1`.
- Output is printed to the console accordingly.

---

## 02. Linear Search with Performance Timing

This script performs a **linear search** on a target element and measures the elapsed time of two different search loops using MATLAB’s `tic` and `toc` functions.

### Files:
- `linearSearch.m` — Contains two linear search loops and timing mechanisms.

### How It Works:
- An array `arr = [3, 5, 7, 9, 11, 13]` is searched for the target value `9`.
- Two `for` loops check each element and print the index when the target is found.
- Elapsed time is displayed for both loops to compare performance.

---

## Output Example

```matlab
Element Found At Index: 3

The Target is Found at Index 4
The Elapsed Time for Loop 1 : 0.000013

The Target is Found at Index 4
The Target is Found :  4
The Elapsed Time for Loop 2 : 0.000011
