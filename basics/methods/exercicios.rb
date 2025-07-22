# Escreva um programa que imprima uma mensagem de saudação. Este programa deve conter um método chamado greetingque recebe a namecomo parâmetro e retorna uma string.

def greeting(name)
  "Hello, " + name + "!"
end

puts greeting("Alice")

#--------------------------------------------------------------

# Qual é o resultado das seguintes expressões? Ou seja, qual valor cada expressão retorna?

# Copiar código

1. x = 2    # => 2

2. puts x = 2    # => nil

3. p name = "Joe"    # => "Joe"

4. four = "four"    # => "four"

5. print something = "nothing"    # => nil
#--------------------------------------------------------------------

# Escreva um programa que inclua um método chamado multiplyque recebe dois argumentos e retorna o produto dos dois números.

def multiply(number1, number2)
  number1 * number2
end

puts multiply(4, 2)

#--------------------------------------------------------------------
# O que o código a seguir imprimirá na tela?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# nada

#--------------------------------------------------------------------

# O que a seguinte mensagem de erro lhe diz?

# ArgumentError: wrong number of arguments (1 for 2)
# from (irb):1:in `calculate_product'
# from (irb):4
# from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# Solução
# Você está chamando um método chamado calculate_productque requer dois argumentos, mas você está fornecendo apenas um.

#--------------------------------------------------------------------