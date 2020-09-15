clear, clc

G1 = tf(1,[1 10])
G2 = tf(1,[1 1])
G3 = tf([1 0 1],conv([1,2],[1,2]))
G4 = tf([1 1],[1 6])
H1 = tf([1 1],[1 2])
H2 = 1

% Series configuration b/w G2 and G4 
G5 = series(G2,G4)

% Parallel configuration b/w G3 and G5 
G6 = parallel(G3,G5)

% Feedback configuration b/w G1 and H1 
G7 = feedback(G1,H1)

% Series configuration b/w G7 and G6 
G8 = series(G7,G6)

% Feedback configuration b/w G8 and H2 
G9 = feedback(G8,H2)
