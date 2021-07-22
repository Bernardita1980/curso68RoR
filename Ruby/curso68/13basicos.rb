#Mostrar 1-255
#Escriba un programa que muestre todos los números del 1 al 255.
for i in(1..255)
    puts i
end
#recorer con each
(1..255).each do |i|
    puts i
end
#recore con while
i=1
num =255
while i <= num do
        puts i
        i+=1
end
#upto
1.upto(255) {|i| print i, " " }

#Mostrar números impares entre 1 y 255
#Escriba un programa que muestre todos los números impares del 1 al 255.
i=1
num =255
while i <= num do
        puts i
        i+=2
end
#.step
(1..255).step(2) 


#for 
for i in 1..255
    if 


 #Muestre la suma
#Escriba un programa que muestre los números del 0 al 255, pero esta vez, muestre también la suma de los números que se han mostrado hasta el momento. Por ejemplo, tu programa debe mostrar algo como esto:
i=0
suma=0
while i<=255 do
    puts "nuevo numero: #{i} suma #{suma+=i}"
    i+=1
end
#4 Recorriendo un arreglo
#Dado un arreglo X, digamos [1, 3, 5, 7, 9, 13], escriba un programa que recorra cada elemento del arreglo y muestre su valor. Ser capaz de recorrer cada elemento de un arreglo es sumamente importante.
a=[1,3,5,7,9,13]
for i in a
    puts i
end

a.each do |i|# i viene a ser el elemento
    puts i
end
#5 Encontrar el máximo
#Escriba un programa (un conjunto de instrucciones) que tome cualquier arreglo y muestre el valor máximo del arreglo. Tu programa debe funcionar también con arreglos que tengan todos los números negativos (ejemplo [-3, -5, -7]), o incluso una combinación con números positivos, negativos y cero.
def encontrarMax arreglo
    puts arreglo.max
end
encontrarMax [-1, 3, 0, 7, 9, 13]

#yield
def encontrarMax arreglo
    yield arreglo.max
end
encontrarMax ([-1, 3, 0, 7, 9, 13]) {|i| puts  "el max es: #{i}" }

#6 Promedio
#Escriba un programa que tome un arreglo y muestre el PROMEDIO de los valores del arreglo. Por ejemplo para el arreglo [2, 10, 3] tu programa debe mostrar un promedio de 5. De nuevo, asegúrate de crear un caso base y escribe las instrucciones para resolver este caso primero, luego ejecuta tus instrucciones para otros casos más complicados. Puedes utilizar la función length para esta actividad.
def getPromedio (arreglo)
    yield arreglo.sum/arre.size # sum obtiene la suma de los datos
end
getPromedio([2,4,6,8]) {|i| puts  "el promedio es: #{i}" }

#7Arreglo con números impares
#Escriba un programa que cree un arreglo "y" que contenga todos los números impares entre 1 y 255. Cuando el programa se complete, "y" debe tener los valores de [1, 3, 5, 7, ... 255].
a=[]
for i in 1..255
    if !(i%2==0)
        a.push(i)
    end
    puts a.to_s # mostrara como string y no hacia abajo
    #otras formas
    puts (0..255).select { |elem| elem.odd? }

    puts (1..255).find_all { |i| i % 2 !=0 }.to_s

    #8Mayor que Y
#Escriba un programa que tome un arreglo y devuelva la cantidad de números que son mayores a un valor dado Y. Por ejemplo si el arreglo es [1, 3, 5, 7] y Y = 3, después de ejecutar tu programa debe mostrar 2 (debido a que hay 2 valores en el arreglo que son mayores a 3).
#[1, 3, 5, 7] y Y = 3
puts [1, 3, 5, 7].find_all { |i| i > y  }.size # con a se convierte en arreglo

#Elevar al cuadrado
#Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo (un conjunto e instrucciones) que multiplique cada valor en el arreglo por si mismo. Cuando el programa termine, el arreglo x debe tener valores que han sido elevados al cuadrado, es decir [1, 25, 100, 4].
puts [1, 5, 10, -2].collect{ |x| x * x }

#9Eliminar números negativos
#Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que reemplace cualquier número negativo con 0. Cuando el programa termine, x no debe tener valores negativos, es decir [1, 5, 10, 0].
def reemplazo (x)
    x.each_with_index do |valor, indices|
        if valor < 0
            x.delete(x[indice])
        end
    end
    puts x.to_s
    end
    reemplazo([1,5,10,-2




    


