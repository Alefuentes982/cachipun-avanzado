#################m menu principal ################# 

def menu()
    puts "\n"
    puts "1.Piedra"
    puts "2.Papel"
    puts "3.Tijeras"
    puts "4.SALIR"
    puts "\n"
    puts "ingrese una opcion (1..2..3..4)" 
    op = gets.chomp.to_i
    end

################ gameover ###############################
def gameover()
    print "\n"     
    print "g" 
    sleep(0.5)
    print "a" 
    sleep(0.5)
    print "m" 
    sleep(0.5)
    print "e"
     sleep(0.5)
    print "-"
    sleep(0.5)
    print "o" 
    sleep(0.5)
    print "v"
    sleep(0.5)
    print "e"
    sleep(0.5)
    print "r"
    sleep(0.5)
    print "\n"
    print "\n"    
end

################### mostrar ######################################
def mostrar_op(op)

    if op == 1
        op = 'Piedra'
        
    elsif op == 2
        op = 'Papel' 
          
    elsif op == 3
        op = 'Tijeras'
    end
    print op             
end
##################valida opcion###################

def valida_opcion(op)
    while op <= 0 || op >= 5
        print "opcion invalida, ingrese nuevamente su opcion"
        sleep(0.3)
        puts "\n"
        puts "\n"
        op = menu().to_i
    end
    op 
end

##################### Titulo principal ###########################
def juego()
print "\n"
print "PIEDRA, PAPEL O TIJERA - 2 PLAYERS"

sleep(1)

 
################## player 1 ##########################

puts "\n"
puts "\n"
puts "turno jugador numero 1"
puts "\n"

op_a = menu().to_i
op1 = valida_opcion(op_a).to_i
if op1 == 4
   return
end
    

################## player 2 ########################### 

puts "\n"
puts "\n"
puts "turno jugador numero 2"
puts "\n"

op_b = menu().to_i
op2 = valida_opcion(op_b).to_i
if op2 == 4
    return
end

print "\n"
############### evaluacion ##############################

if op1 == 4 || op2 == 4
    print "\n"
    gameover()
    
    

elsif op1 == op2
    print "player 1 juega: " 
    print mostrar_op(op1)
    print "\n"
    print "player 2 juega: " 
    print mostrar_op(op2)
    print "\n"
    print "\n"
    print "Empate!!"
    print "\n"
    

elsif  
    op1 == 1 && op2 == 3 || op1 == 2 && op2 == 1 || op1 == 3 && op2 == 2
    print "player 1 juega: "
    print mostrar_op(op1)
    print "\n"
    print "player 2 juega: "
    print mostrar_op(op2)
    print "\n"
    print "\n"
    print "PLAYER 1 WINS!!"
    print "\n"
    

elsif  
    op2 == 1 && op1 == 3 || op2 == 2 && op1 == 1 || op2 == 3 && op1 == 2
    print "player 1 juega: "
    print mostrar_op(op1)
    print "\n"
    print "player 2 juega: "
    print mostrar_op(op2)
    print "\n"
    print "\n"
    print "PLAYER 2 WINS!!" 
    print "\n"
    

end

jugarotravez()

end

################## jugar otra vez ##################################

def jugarotravez()
    print "\n"
    print "Quieres volver a jugar otra partida? s/n"
    jugar = gets.chomp
    
    if jugar == 'n'
        return
        
    
    elsif jugar == 's'
        juego()
    
    elsif jugar !='s' || jugar !='n'
        while jugar !='s' || jugar !='n'
            print "ingrese opcion s / n:  "
            jugar = gets.chomp
            
            if jugar == 's'
               juego()
            elsif jugar == 'n'
                return
              
            end        
        end
          
    end
    
    end    

######################### INICIO ######################################
a = 4 #creada para evitar el warning!
inicio = juego().to_i

print "\n"

if (inicio = a)
    gameover()

print "\n"
end

##########################################333



