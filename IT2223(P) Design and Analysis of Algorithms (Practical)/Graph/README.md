# Graph Plotting in MATLAB – README

This project contains a series of MATLAB scripts that demonstrate various ways of creating and visualizing graphs using adjacency matrices and source-target edge lists. Below is a description of each section.

---

## 01. Adjacency Matrix Representation
**Description:**  
Creates an undirected graph from a 3×3 adjacency matrix and visualizes it using the `graph` function.

```matlab
A = [0 1 0;
     1 0 1;
     0 1 0];
G = graph(A);
plot(G);
title("Adjacency Matrix Representation");
```

---

## 02. Directed Graph with Weights
**Description:**  
Builds a directed graph using source (`s`) and target (`t`) vectors and assigns weights to the edges.

```matlab
s = [1 1 1 2 5 3 6 4 7 8 8 8];
t = [2 3 4 5 3 6 4 7 2 6 7 5];
weights = [100 10 10 10 10 20 10 30 50 10 10 10];
G = digraph(s, t, weights);
plot(G, 'EdgeLabel', G.Edges.Weight, 'NodeColor', 'r');
```

---

## 03. Complex Directed Graph with Force Layout
**Description:**  
Demonstrates a more complex directed graph with 12 nodes and edge weights using a force-directed layout.

```matlab
s = [1 1 1 2 2 6 6 7 7 3 3 9 9 4 4 11 11 8];
t = [2 3 4 5 6 7 8 5 8 9 10 5 10 11 12 10 12 12];
weights = [10 10 10 10 10 1 1 1 1 1 1 1 1 1 1 1 1 1];
G = digraph(s, t, weights);
plot(G, 'EdgeLabel', G.Edges.Weight, 'Layout','force');
```

---

## 04. Node Coloring
**Description:**  
Creates an undirected graph and assigns custom RGB colors to each node.

```matlab
s = [1 1 2 3 4];
t = [2 3 4 4 5];
G = graph(s, t);
nodeColors = [1 0 0; 0 1 0; 0 0 1; 1 1 0; 1 0 1];
plot(G, 'NodeColor', nodeColors, 'LineWidth', 1.5);
```

---

## 05. Highlighting Nodes
**Description:**  
Highlights specific nodes in a star-shaped graph.

```matlab
s = 1;
t = 2:6;
G = graph(s, t);
h = plot(G, 'Layout','force');
highlight(h, [1,3], 'NodeColor','red');
highlight(h, 1, 3, 'NodeColor','magenta');
```

---

## 06. Displaying Node Connections
**Description:**  
Uses `neighbors` to print out which nodes each node is connected to.

```matlab
s = [1 1 2 3 4];
t = [2 3 4 4 5];
G= graph(s, t);
for node = 1:numnodes(G)
    adj = neighbors(G, node);
    fprintf('Node %d is connected to:', node);
    fprintf('%d', adj);
    fprintf('\n');
end
```

---

## 07. Complex Graph with Multiple Highlights
**Description:**  
Builds a more intricate undirected graph and applies different color highlights to various sets of nodes and edges.

```matlab
s = [1 2 3 4 5 6 7 8 9 10 1 1 6 2 7 3 8 4 9 5 3 4 5 1 2];
t = [11 11 11 11 11 11 11 11 11 11 10 6 2 7 3 8 4 9 5 10 4 5 1 2 3];
G = graph(s, t);
h = plot(G, 'LineWidth', 2.5);
highlight(h, 1:11, 'NodeColor','blue');
highlight(h, 11, 1:10, 'EdgeColor', 'magenta');
highlight(h, [1 1 2 3 4], [2 5 3 4 5], 'EdgeColor', 'green');
highlight(h, [1 6 2 7 3 8 4 9 5 10], [6 2 7 3 8 4 9 5 10 1], 'EdgeColor', 'red');
```

---

