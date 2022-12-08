% Verificar si un elemento pertenece a una lista dada.

    buscar(E,[E|_]).
    buscar(E,[_|XS]):-buscar(E,XS).

% Obtener la longitud de una lista.

    size([],0).
    size([X|XS],U):- size(XS,U1), U is U1+1.    

% Obtener la concatenación de 2 listas dadas.

    concatenar([],L2,L2).
    concatenar([H1|T1],L2,[H1|R]):-concatenar(T1,L2,R).

% Eliminar un elemento de una lista
% Verificar si un elemento pertenece a una lista dada.


    eliminar(_,[],[]).
    eliminar(X,[X],[]).
    eliminar(X,[H1|T1],[H1|TAIL]):- X=\=H1,eliminar(X,T1,TAIL).
    eliminar(X,[H1|T1],TAIL):- X=:=H1,eliminar(X,T1,TAIL).

% Agregar un elemento a una lista.


    agregar(X,L1,[X|L1]).

% Separar una lista en 2 listas (pares e impares).
    separar([],[],[]).
    separar([X|XS],[X|T1],T2):- X mod 2 =:= 0,separar(XS,T1,T2).
    separar([X|XS],T1,[X|T2]):-separar(XS,T1,T2).

% Verifica si una lista se encuentra de manera ascendente.

    ascendente([X]).
    ascendente([X1,X2|TAIL]):- X1 =< X2, ascendente([X2|TAIL]).

% Verifica si una lista se encuentra de manera descendente.


    descendente([X]).
    descendente([X1,X2|TAIL]):- X1 >= X2, descendente([X2|TAIL]).

% aplanar(L, A), donde L es en general una lista de listas,
% tan compleja en su anidamiento como queramos imaginar, y A es la lista que resulta
%	de reorganizar los elementos contenidos en las listas anidadas en un único nivel.

    aplana([],[]).
    aplana([[H|T]|R],S):-aplana([H|T],T1),aplana(R,R1),append(T1,R1,S),!.
    aplana([[]|T],S):-aplana(T,S),!.
    aplana([H|T],[H|S]):-aplana(T,S).


% Obtener una lista con elementos menores que el elemento HEAD.

    menorHead([],[]).
    menorHead([_],[]).
    menorHead([X1,X2|XS],[X2|T1]):-X1>X2,menorHead([X1|XS],T1).
    menorHead([X1,X2|XS],T1):-X1<X2,menorHead([X1|XS],T1).

% Obtener una lista con elementos mayores que el elemento HEAD.

    mayorHead([],[]).
    mayorHead([A],[]).
    mayorHead([X1,X2|XS],[X2|T1]):- X2>X1,mayorHead([X1|XS],T1).
    mayorHead([X1,X2|XS],T1):- X2<X1,mayorHead([X1|XS],T1).

% Obtener una lista con los elementos invertidos.

    invertir([],[]).
    invertir([X|XS],L):-invertir(XS,R),concatenar(R,[X],L).