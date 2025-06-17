# MATLAB Search and Sort Algorithm Implementations

This repository demonstrates simple implementations and performance measurement of search and sort algorithms using MATLAB. It includes:

- A **comparison between Binary Search and Linear Search** on a large array.
- An implementation of **Selection Sort** on an unsorted array.

---

## Contents

### 01. Search Algorithms: Binary vs Linear

#### File: `searchComparison.m`

This script:
- Creates a sorted array of 1000 integers: `1:1000`
- Searches for a target value (`998`) using:
  - **Binary Search**
  - **Linear Search**
- Measures and prints the time taken by each method using MATLAB's `tic` and `toc`.

#### Output Example:
Binary Search
Target Found At Index 998
Time: 0.000008 s

Linear Search
Target Found at index 998
Time: 0.000037 s


#### Notes:
- **Binary Search** is significantly faster on sorted data, especially as the dataset grows.
- **Linear Search** scans each element one by one, which is slower for large arrays.

---

### 02. Selection Sort

#### File: `selectionSort.m`

This script:
- Implements the **Selection Sort** algorithm to sort an array of integers.
- Works by selecting the minimum element and swapping it with the current index.

#### Example:
Input:
```matlab
arr = [7, 4, 10, 8, 3, 1];

After sorting:
arr = [1, 3, 4, 7, 8, 10];
```




