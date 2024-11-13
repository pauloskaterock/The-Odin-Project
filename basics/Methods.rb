"shit".reverse
# -----------------------------------------------------

Criando um METODO

def my_name
  "Joe Smith"
end

puts my_name    #=> "Joe Smith"
# ------------------------------------------------------
Parâmetros e argumentos
Claro, nem todos os métodos são tão básicos quanto o my_namemétodo de exemplo acima. Afinal, de que servem os métodos se você não pode interagir com eles? Quando você quer retornar algo diferente de um resultado fixo, você precisa dar parâmetros aos seus métodos. Parâmetros são variáveis ​​que seu método receberá quando for chamado. Você pode ter interações mais significativas e úteis com seus métodos usando parâmetros para torná-los mais versáteis.

def greet(name)
  "Hello, " + name + "!"
end

puts greet("John") #=> Hello, John!

# -----------------------------------------------------
Parâmetros padrão
E se você nem sempre quiser fornecer argumentos para cada parâmetro que seu método aceita? É aí que os parâmetros padrão podem ser úteis. Voltando ao nosso exemplo acima, o que acontece se não soubermos o nome da pessoa? Podemos alterar nosso greetmétodo para usar um padrão namede “estranho”:

def greet(name = "stranger")
  "Hello, " + name + "!"
end

puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!
# -------------------------------------------------------
Como dizemos aos nossos métodos o que retornar? Vamos revisitar nosso my_namemétodo de exemplo:

def my_name
  "Joe Smith"
end

puts my_name #=> "Joe Smith"





############

def my_name
  return "Joe Smith"
end

puts my_name #=> "Joe Smith"
--------------------------------------------------------
# Ruby é uma das poucas linguagens que oferece retorno implícito para métodos, o que significa que um método Ruby retornará a última expressão que foi avaliada mesmo sem a returnpalavra-chave. A última expressão que foi avaliada pode ou não ser a última linha do código, como você pode ver no exemplo a seguir:



  def even_odd(number)
    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
  end
  
  puts even_odd(16) #=>  That is an even number.
  puts even_odd(17) #=>  That is an odd number.

---------------------------------------------------------
def my_name
  return "Joe Smith"
  "Jane Doe"
end

puts my_name #=> "Joe Smith"
---------------------------------------------------------
# Por exemplo, um retorno explícito pode ser útil quando você deseja escrever um método que verifica erros de entrada antes de continuar.

def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.
----------------------------------------------------------
def puts_squared(number)
  puts number * number
end

----------------------------------------------------------
def return_squared(number)
  number * number
end
----------------------------------------------------------
x = return_squared(20) #=> 400
y = 100
sum = x + y #=> 500

puts "The sum of #{x} and #{y} is #{sum}."
#=> The sum of 400 and 100 is 500.
----------------------------------------------------------
phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"


---------------------------------------------------------
["be", "to", "not", "or", "be", "to"].reverse
= ["to", "be", "or", "not", "to", "be"].join(" ")
= "to be or not to be".capitalize
= "To be or not to be"

---------------------------------------------------------
puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true

---------------------------------------------------------
# Métodos de estrondo
# Observe o exemplo abaixo:

whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"


---------------------------------------------------------
# métodos bang , que são denotados com um ponto de exclamação ( !) no final do nome do método.

#   Ao adicionar um !ao final do seu método, você indica que este método executa sua ação e simultaneamente substitui o valor do objeto original pelo resultado.
  
  puts whisper.downcase! #=> "hello everybody"
  puts whisper #=> "hello everybody"

----------------------------------------------------------