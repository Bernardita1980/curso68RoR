def square(num)#paso el numero 5 a la variable llamada num
  puts "num is #{num}"
  puts "yield(num) has a value of #{yield(num)}" #este yield puede devolver un valor
  #cuando ejecutamos yield estamos 5 a es pasado a i
end
square(5) {|1| i*i} #estamos pasando un parametro al metodo, pero tambien al bloque i*i puedo devolverle un valor
#un bloque puede dar un valor y ese valor sera almacenado en yield