% Tree

nodes = {'A', 'B', 'C', 'D', 'E', 'F', 'G'};

%define edges using source & target nodes
s = [1 1 2 2 3 3];
t = [2 3 4 5 6 7];

%create a directed graph
G = digraph(s, t, [], nodes);

plot(G, 'Layout', 'layered', 'Direction', 'down');
title('Simple tree with 3 level');

%weight
weights = [5 3 2 4 6 1];

%create a directed weighted graph
H = digraph(s, t, weights, nodes);
plot(H, 'Layout', 'layered', 'Direction', 'down', 'EdgeLabel', H.Edges.Weight);
title('Weight tree with 3 levels');
