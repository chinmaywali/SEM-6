child(a,b).
child(a,c).
child(a,d).
child(b,e).
child(b,f).
child(c,g).

path(A,G,[A|Z]):-childnode(A,G,Z).
childnode(A,G,G):-child(A,G).
childnode(A,G,[X,L]):-child(A,X),childnode(X,G,L).


/*******************************************************/
input

path[a,g,L].
