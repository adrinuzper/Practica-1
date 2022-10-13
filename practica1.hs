
--1
average3Numbers :: (Floating a)=>a->a->a->a--recibimos valores flotantes, para permitir el recibir tambien numeros con decimales
average3Numbers x y z= (x+y+z)/3

 ---2 Funcion que determina si el ultimo
 --digito del numero es 3
isLastDigit3 :: (Integral a)=> a -> Bool
isLastDigit3 num 
   |mod (num-3) 10 ==0 = True
   |otherwise = False
   
--3 Funcion que determina si el numero 
--tiene 3 digitos
has3Digits:: (Integral a)=>a-> Bool
has3Digits n
    | n < 1000 && n > 99 = True
    |otherwise           = False

---4 Funcion que determina si un numero 
--es negativo, devuelve True si es negativo 
--y False si es positivo
isNegative :: (Integral a)=>a ->Bool
isNegative num
  | num > 0     = False
  | otherwise = True 
  
--5 Funcion que suma los digitos de un numero 
--el cual solo debe tener 2 digitos
sum2Digits::(Integral a) => a -> a 
sum2Digits n 
    |n < 10 = error "El numero no tiene 2 digitos"
    | n > 99 = error "El numero no tiene 2 digitos"
    |otherwise  = (mod n 10) + (mod nuevo 10)
    where
        nuevo = n `div` 10
  
--6 Funcion que determina si los digitos 
-- de un numero son pares, el cual solo debe tener 
-- 2 digitos, retorna True si es verdadero y biseversa
even2Digits:: (Integral a) => a -> Bool
even2Digits n
    |n < 10 = error "El numero no tiene 2 digitos"
    |n > 99 = error "El numero no tiene 2 digitos"  
    | even valor1 && even valor2 = True
    |otherwise = False
    where
        valor1 = mod n 10
        valor2 = mod (n`div`10) 10 

--7 Funcion que determina si un numero es 
--alguno de los primeros 8 números primos.
--si se cumple la condicion retornar True y sino se cumple
--retorna False
isPrimeNumber:: Int -> Bool
isPrimeNumber num = elem num [2,3,5,7,11,13,17,19]

--8  Funcion que determina si un numero es 
--alguno de los primeros 8 números primos, ademas si es numero par
--si se cumple la condicion retornar True y sino se cumple
--retorna False
isEvenAndPrimeNumber::Int -> Bool
isEvenAndPrimeNumber valor = isPrimeNumber valor && even valor 

--9 Funcion que determina si los numero ingresados 
--son multiplos
isMultiple:: (Integral a) => a -> a -> Bool
isMultiple x y = ((mod x y) == 0)

--10 Funcion que compara si los 2 digitos de un numero
--son iguales, el numero solo debe tener 2 digitos
isEqual2Digits:: Int -> Bool
isEqual2Digits num 
    |num  < 10 = error "El numero no es de dos digitos"
    |num  > 99 = error "El numero no es de dos digitos"
    |otherwise = numero1 == numero2
        where
           numero1 = mod num 10
           numero2 = mod (num`div`10) 10     

--11 Funcion que determina el numero mayor
--dado 3 numeros
higher:: (Integral a) =>a->a->a->a
higher x y z 
    |x > y && x>z = x
    |y > x && y>z = y
    |z > x && z>y = z

--12 Funcion que determina si la suma
-- entre el número x y el número y origina un número par.
isEvenSum2Number::(Integral a)=> a -> a->Bool
isEvenSum2Number x y = even (x+y)
 
 --13 Funcion que suma 2 numeros los cuales 
 --deben de ser de 2 digitos
sum2Digit2Number:: (Integral a) => a->a->a
sum2Digit2Number x y 
    |x<10 = error "El primer numero no es de 2 digitos"
    |x>99 = error "El primer numero no es de 2 digitos"
    |y<10 = error "El segundo numero no es de 2 digitos"
    |y>99 = error "El segundo numero no es de 2 digitos"
    |otherwise = x1+x2+y1+y2
        where
           x2 = mod x 10
           x1= mod (x`div`10) 10
           y2 = mod y 10
           y1 = mod (y`div`10) 10  

--14 Funcion que suma los digitos de un numero
--el cual tiene que ser de 3 digitos. 
sum3Digits:: (Integral a) => a -> a
sum3Digits n
    | n < 100 = error "El numero no es de 3 digitos"
    | n > 999 = error "El numero no es 3 digitos"
    | otherwise = valor1 + valor2 + valor3
        where
            valor1 = mod (n`div`100) 100
            valor2 = mod (n`div`10) 10 
            valor3 = mod n 10 

--15 Funcion que determina si almenos dos de los diditos 
--de un numero son iguales, el numero solo debe de ser 
-- de 3 digitos y retorna un Bool
equal3Digits:: (Integral a)=>a -> Bool
equal3Digits n
    | n < 100 = error "El numero no tiene 3 digitos"
    | n > 999 = error "El numero no tiene 3 digitos"
    | x == y = True
    | x == z = True
    | y == z = True
    |otherwise = False
        where
            x = mod (n`div`100) 100
            y = mod (n`div`10) 10 
            z = mod n 10 

--16 Funcion que determina la posicion del digito 
--mayor de un numero de 3 digitos
positionHigher3Digits:: (Integral a)=>a -> String
positionHigher3Digits n
    | n < 100 = error "El numero no tiene 3 digitos"
    | n > 999 = error "El numero no tiene 3 digitos"  
    | x > y && x>z = "El numero mayor esta en la posision 1"
    | y>x && y>z = "El numero mayor esta en la posision 2" 
    | z>x && z>y = "El numero mayor esta en la posision 3"
    |otherwise   = "Los numeros son iguales"
            where
            x = mod (n`div`100) 100
            y = mod (n`div`10) 10 
            z = mod n 10 
  
  --17 Funcion que determina si es palindromo, 
  --si esta condicion se cumple regresa True de lo 
  --contrario regresa False
palindrome::(Eq a) =>[a] -> Bool
palindrome xs = xs == reverse xs 

--18 funcion que es la división de x/y,
--mostrando un error cuando ‘y’ es 0
safeDivision:: Float->Float->Float
safeDivision x y 
    |y==0 = error "No se puede dividir entre cero"
    |otherwise = x/y

--19 Funcion que determina el resultado de la 
--operacion logica de disyuncion la cual retorna un Bool
xor::Bool -> Bool -> Bool
xor x y = (x&&not(y)||not(x)&&y)

--20 Funcion que determina la distancia entre 
--2 puntos, siendo ‘x’ y ‘y’ coordenada de un plano cartesiano.
distance::(Floating a)=> (a,a)->(a,a)->a
distance (x1,y1) (x2,y2) = sqrt (((x2-x1)^2) + ((y2-y1)^2))