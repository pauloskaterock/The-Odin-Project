friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end

invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]
###############################################

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]
#-----------------------------------------------------------

 friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.reject { |friend| friend == 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]

 #--------------------------------------------------------------
#  O método each
#eaché o avô dos métodos enumeráveis. É um pouco como Chuck Norris: pode fazer qualquer coisa. Como você verá ao longo desta lição, porém, só porque você pode usar #eachpara fazer praticamente qualquer coisa não significa que seja sempre a melhor ou mais eficiente ferramenta para o trabalho.

# Chamar #eachum array iterará por esse array e renderá cada elemento a um bloco de código, onde uma tarefa pode ser executada:

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| puts "Hello, " + friend }

#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun

#=> ["Sharon", "Leo", "Leila", "Brian" "Arun"]

# ------------------------------------------------------------------

my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

#=> The new number is 2.
#=> The new number is 4.

#=> [1, 2]
# ------------------------------------------------------------------

#eachtambém funciona para hashes com um pouco de funcionalidade adicionada. Por padrão, cada iteração produzirá tanto a chave quanto o valor individualmente ou juntos (como um array) para o bloco, dependendo de como você define sua variável de bloco:

my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }

#=> one is 1
#=> two is 2
#=> { "one" => 1, "two" => 2}

my_hash.each { |pair| puts "the pair is #{pair}" }

#=> the pair is ["one", 1]
#=> the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}



# -------------------------------------------------------------
Por exemplo, se quisermos imprimir apenas uma palavra de um array de strings, podemos fazer isso assim:

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]





