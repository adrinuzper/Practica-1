--1 Funcion que pasa el primer elemento de una lista
--al ultimo elemento
firstToEnd :: (Ord a)=>[a]->[a]
firstToEnd []= error "Lista vacia"
firstToEnd (x:xs)= xs ++ [x] 

---2 Funcion que muestra el valor minimo y el maximo de una lista
minAndMax ::( Ord a)=>[a] ->[a]
minAndMax []= error "Lista vacia"
minAndMax xs = [minimum  xs , maximum xs]

---3 Funcion que muestra una lista con elementos menores
-- al primer valor de la lista
minorsFirstElement:: (Ord a)=>[a]->[a]
minorsFirstElement []=error "Lista vacia"
minorsFirstElement (x:xs) = [n| n<- xs, x>n]

--4 Funcion que regresa una lista con elementos
--mayores o igual al primer valor de la lista
greaterOrEqualFirstElement ::(Ord a)=>[a]->[a]
greaterOrEqualFirstElement []=error "Lista vacia"
greaterOrEqualFirstElement (x:xs) = [n| n<- xs, x<=n]

--5 Funcion que regresa una lista con los valores
--menores a la suma del primer y segundo elemento de xs
minorsToSumFirstAndSecondElem::(Integral a)=>[a]->[a]
minorsToSumFirstAndSecondElem [] =[]
minorsToSumFirstAndSecondElem [x] = []
minorsToSumFirstAndSecondElem [x,y] = [x,y]
minorsToSumFirstAndSecondElem (x:y:xs) = [n | n <- xs, n < suma]
    where
        suma = x+y

---6 Funcion que hace la suma de las duplas de una lista
listSumDuplaToList::(Integral a) => [(a,a)]->[a]
listSumDuplaToList [] = []
listSumDuplaToList ((x1,y1):xs) = (x1+y1) : listSumDuplaToList xs

---7 Funcion en la que cada elemento es la multiplicación de los elementos de cada tripleta
listMultTripletaToList::(Integral a)=> [(a,a,a)]->[a]
listMultTripletaToList [] = []
listMultTripletaToList ((x1,y1,z1):xs) = (x1*y1*z1) : listMultTripletaToList xs
-- listMultTripletaToList xs = [x*y*z | (x,y,z)<- xs]

---8  Funcion en donde los elementos de una dupla cambian de posición,
changeFstToSnd::(Integral a)=>[(a,a)]->[(a,a)]
changeFstToSnd [] = []
changeFstToSnd ((x,y):xs) = (y,x):changeFstToSnd xs

---9 Funcion de una lista de duplas el cual da como resultado,un vector resultante de la
--suma de los diferentes vectores de xs,
sumVectors::(Integral a)=> [(a,a)]->(a,a)
sumVectors [(a,b)] = (a,b)
sumVectors ((x,y):xs) = (sumx+x,sumy+y)
    where
        (sumx,sumy)  = sumVectors xs


---10 funcion de una lista de divisores de n,
--donde n es un numero
dividers::(Integral a)=> a -> [a]
dividers x = [n | n <- [1..x], (mod x n)==0]


--11 Funcion de una lista con los números 
--primos existentes de 1 a n, donde n es un número.
primeNumbers::(Integral a)=> a -> [a]
primeNumbers x = [n | n <- [1..x],(length (dividers n))== 2]

--12 Funcion de  una lista
--infinita de los números primos.
infinitePrimeNumbers::(Integral a) =>[a]
infinitePrimeNumbers = [n | n <- [1..],(length (dividers n))== 2]
     