#El usuario envía el valor correcto, devuelve "¡Lo conseguiste!".
#El usuario envía un número más alto, devuelve "¡La suposición fue demasiado alta!".
#El usuario envía un número más bajo, devuelve "¡La suposición fue demasiado baja!".
def adivina_numero valor
    number = 25
    # tu código aquí
    if valor ==number
        puts "¡lo cpnseguiste!"
    elsif valor>number
        puts "¡La suposición fue demasiado alta!"
    elsif valor<number
        puts "¡la suposición fue demasiado baja!"        
    end 
end
adivina_numero(25)



# UNLESS
#Si quieres desafiarte, intenta utilizar unless en lugar de los condicionales if.
#unless es la negacion de la sentencia se puede leer: a menos que 

def adivina_numero valor
    number = 25
    puts"¡Lo conseguiste!" unless valor !=25 
    puts "¡La suposición fue demasiado alta!" unless valor<=number  
    puts "¡La suposición fue demasiado baja!" unless valor>=number 
end 
adivina_numero 25




