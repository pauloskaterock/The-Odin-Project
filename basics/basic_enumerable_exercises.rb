def display_current_inventory(inventory_list)
  # use #each para iterar por cada item da inventory_list (um hash)
  # use puts para enviar cada item da lista "<chave>, quantidade: <valor>" para o console

inventory_list.each do |item, quantity|
    puts "#{item}, quantity: #{quantity}"
  end

# Explicação Passo a Passo:
# Entendendo o Hash inventory_list:

# O parâmetro inventory_list é um hash onde:

# Chaves (keys): representam itens (ex: "apples", "bananas").

# Valores (values): representam quantidades (ex: 3, 5).

# Exemplo:

# ruby
# inventory = { "apples" => 3, "bananas" => 5, "oranges" => 2 }
# Método #each para Hashes:

# O each itera sobre cada par chave-valor do hash.

# A sintaxe é:

# ruby
# hash.each do |key, value|
#   # código aqui
# end
# No nosso caso:

# key = nome do item (ex: "apples").

# value = quantidade (ex: 3).

# Bloco do |item, quantity| ... end:

# Dentro do bloco, usamos puts para exibir a string formatada:

# ruby
# puts "#{item}, quantity: #{quantity}"
# Isso imprimirá cada linha no formato solicitado.

# Exemplo de Uso:

# ruby
# inventory = { "apples" => 3, "bananas" => 5, "oranges" => 2 }
# display_current_inventory(inventory)
# Saída:

# text
# apples, quantity: 3
# bananas, quantity: 5
# oranges, quantity: 2
# Conceitos-Chave Aprendidos:
# Iteração com each em Hashes:

# Acesse chaves e valores simultaneamente.

# Interpolação de Strings:

# Use #{var} para inserir variáveis em strings.

# Blocos em Ruby:

# Delimitados por do ... end ou { ... }.

# Versão Alternativa (com {} para blocos de uma linha):
# ruby
# def display_current_inventory(inventory_list)
#   inventory_list.each { |item, quantity| puts "#{item}, quantity: #{quantity}" }
# end
# Teste Você Mesmo:
# Crie um hash de inventário:

# ruby
# my_inventory = { "laptops" => 10, "phones" => 5, "tablets" => 7 }
# Chame o método:

# ruby
# display_current_inventory(my_inventory)
# Saída Esperada:

# text
# laptops, quantity: 10
# phones, quantity: 5
# tablets, quantity: 7
# Dica para Depuração:
# Se o hash estiver vazio, nada será exibido. Você pode adicionar uma verificação:

# ruby
# def display_current_inventory(inventory_list)
#   if inventory_list.empty?
#     puts "Inventory is empty."
#   else
#     inventory_list.each { |item, q| puts "#{item}, quantity: #{q}" }
#   end
# end






end

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
end

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
end

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
end

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
end

