if room_tidy == true
  "I can play video games"
end
########################################################
if statement_to_be_evaluated == true
  # do something awesome...
end

if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end
#=> Hot diggity, 1 is less than 2!
###############################################
if attack_by_land == true
  puts "release the goat"
else
  puts "release the shark"
end


#############################################

if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the octopus"
end


#################################################
# ==(equals) retorna truese os valores comparados são iguais.

5 == 5 #=> true
5 == 6 #=> false
######################################################

# !=(diferente) retorna truese os valores comparados não forem iguais.

5 != 7 #=> true
5 != 5 #=> false

####################################################
# >(maior que) retorna truese o valor à esquerda do operador for maior que o valor à direita.

7 > 5 #=> true
5 > 7 #=> false

####################################################
# <(menor que) retorna truese o valor à esquerda do operador for menor que o valor à direita.

5 < 7 #=> true
7 < 5 #=> false

######################################################
# >=(maior ou igual a) retorna truese o valor à esquerda do operador for maior ou igual ao valor à direita.

7 >= 7 #=> true
7 >= 5 #=> true

#####################################################
# <=(menor ou igual a) retorna truese o valor à esquerda do operador for menor ou igual ao valor à direita.

5 <= 5 #=> true
5 <= 7 #=> true

################################################
#eql?verifica tanto o tipo de valor quanto o valor real que ele contém.

5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
5.eql?(5)   #=> true

###############################################
#equal?verifica se ambos os valores são exatamente o mesmo objeto na memória. Isso pode ser um pouco confuso por causa da maneira como os computadores armazenam alguns valores para eficiência. Duas variáveis ​​apontando para o mesmo número geralmente retornarão true.

a = 5
b = 5
a.equal?(b) #=> true


##############################################
a = "hello"
b = "hello"
a.equal?(b) #=> false

###########################################
# <=>(operador da nave espacial) retorna o seguinte:

# -1se o valor à esquerda for menor que o valor à direita;
# 0se o valor à esquerda for igual ao valor à direita; e
# 1se o valor à esquerda for maior que o valor à direita.

5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5    #=> 1

##############################################
# O &&operador retorna truese ambas as expressões esquerda e direita retornam true.

if 1 < 2 && 5 < 6
  puts "Party at Kevin's!"
end

# This can also be written as
if 1 < 2 and 5 < 6
  puts "Party at Kevin's!"
end

################################################
# Com o ||operador, se a primeira expressão for avaliada como true, a segunda expressão nunca será verificada porque a expressão completa já é true, e o código no bloco será executado.

# Isso é conhecido como avaliação de curto-circuito .

if 10 < 2 || 5 < 6 #=> although the left expression is false, there is a party at Kevin's because the right expression returns true
  puts "Party at Kevin's!"
end

# This can also be written as
if 10 < 2 or 5 < 6
  puts "Party at Kevin's!"
end
##################################################
# O !operador inverte a lógica da expressão. Portanto, se a própria expressão retornar false, usar o !operador torna a expressão true, e o código dentro do bloco será executado.


if !false     #=> true

if !(10 < 5)  #=> true

##################################################
grade = 'F'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end
##################################################
grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end
###############################################
  