# Visão geral da lição
# Esta seção contém uma visão geral dos tópicos que você aprenderá nesta lição.

# Descreva uma matriz aninhada e um hash.
# Explique quais dados são úteis para armazenar em uma matriz aninhada e hash.
# Explique como acessar dados em uma matriz aninhada e hash.
# Explique por que o #digmétodo é útil.
# Explique como adicionar dados a uma matriz aninhada e hash.
# Explique como excluir dados em uma matriz aninhada e hash.
# Explique como criar uma nova matriz aninhada que não seja mutável.
# Explique como iterar sobre uma matriz aninhada e hash.
==============================================================================

# Matrizes aninhadas
# Arrays podem conter qualquer tipo de dado, incluindo outros arrays. Um array que contém outros arrays é chamado de array aninhado, ou array multidimensional.

# Matrizes aninhadas podem ser úteis para armazenar grupos de dados semelhantes ou dados posicionais. A seguinte matriz aninhada de pontuações de teste está armazenando grupos de dados semelhantes e as caixas de correio do professor estão armazenando grupos de dados posicionais.


test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]




# Acessando elementos
# Você já sabe que cada elemento em um array tem um índice. O acesso a um elemento específico dentro de um array aninhado é feito chamando array[x][y], onde xé o índice do elemento aninhado e yé o índice dentro do elemento aninhado.

teacher_mailboxes[0][0]
#=> "Adams"
teacher_mailboxes[1][0]
#=> "Jones"
teacher_mailboxes[2][0]
#=> "Perez"

# Você também pode usar índices negativos para retornar elementos do final de uma matriz, começando em [-1].

teacher_mailboxes[0][-1]
#=> "Davis"
teacher_mailboxes[-1][0]
#=> "Perez"
teacher_mailboxes[-1][-2]
#=> "Smith"


# Se você tentar acessar um índice de um elemento aninhado inexistente, ele levantará um NoMethodError, porque a classe nil não tem um []método. No entanto, assim como um array regular, se você tentar acessar um índice inexistente dentro de um elemento aninhado existente, ele retornará nil.

teacher_mailboxes[3][0]
#=> NoMethodError
teacher_mailboxes[0][4]
#=> nil


# Se você quiser que um valor nil seja retornado ao tentar acessar um índice de um elemento aninhado inexistente, você pode usar o #digmétodo . Este método também pode ser usado ao acessar um índice inexistente dentro de um elemento aninhado existente.

teacher_mailboxes.dig(3, 0)
#=> nil
teacher_mailboxes.dig(0, 4)
#=> nil


teacher_mailboxes.dig(3, 0)
#=> nil
teacher_mailboxes.dig(0, 4)
#=> nil


# Criando uma nova matriz aninhada
# Agora que você viu como acessar valores dentro de um array aninhado, precisamos dar um passo para trás para olhar para a criação de um novo array aninhado. Em uma lição anterior, você foi ensinado a criar um novo array, chamando o método Array.new com até 2 argumentos opcionais (tamanho inicial e valor padrão), como Array.new(3)or Array.new(3, 7). No entanto, há um grande "pegadinha" que é importante destacar. De acordo com a documentação da classe Array , o segundo argumento opcional for Array.new(o valor padrão), deve ser usado apenas com um objeto imutável (incapaz de ser alterado), como um número, valor booleano ou símbolo. Usar uma string, array, hash ou outro objeto mutável pode resultar em comportamento confuso porque cada valor padrão no array será, na verdade, uma referência ao mesmo valor padrão. Portanto, qualquer alteração em um dos elementos alterará todos os elementos no array.

# Para criar um array imutável de objetos mutáveis ​​(string, array, hash, etc), você precisará passar o valor padrão para Array.newpor meio de um bloco, usando chaves, em vez do segundo argumento opcional. O código no bloco é avaliado para cada slot no array, criando múltiplos objetos para inicializar o array, em vez de referências ao mesmo objeto.

# Para ver isso por si mesmo, vamos dar uma olhada em dois exemplos. Este primeiro exemplo usa o segundo argumento opcional para o valor padrão.


mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000
mutable
#=> [[1000, nil], [1000, nil], [1000, nil]]

# Alterar o valor do primeiro elemento no primeiro array aninhado faz com que o primeiro elemento mude em todos os três arrays aninhados! Esse mesmo comportamento acontecerá com strings, hashes ou quaisquer outros objetos mutáveis.

#   Agora, vamos dar uma olhada em um exemplo que omite o segundo argumento opcional e, em vez disso, passa o valor mutável em um bloco.


immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]


# Alterar o valor do primeiro elemento na primeira matriz aninhada não faz com que o valor seja alterado em nenhuma outra matriz aninhada.

#   Adicionar e remover elementos
#   Você pode adicionar outro elemento ao final de um array aninhado usando o #pushmétodo ou o operador shovel <<. Se quiser adicionar um elemento a um array aninhado específico, você precisará especificar o índice do array aninhado.

test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]
test_scores
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]


# Usando essa sintaxe semelhante, você pode adicionar ou remover elementos de toda a matriz aninhada ou de um elemento aninhado específico.

test_scores.pop
#=> [100, 99, 98, 97]
test_scores[0].pop
#=> 100
test_scores
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]


# Iterando sobre uma matriz aninhada
# Vamos analisar como iterar sobre um array aninhado usando o #each_with_indexmétodo. Você pode achar útil pensar em um array aninhado como tendo linhas e colunas. Cada linha é o elemento aninhado e cada coluna é o índice do elemento aninhado. Quando iteramos sobre o exemplo teacher_mailboxes, cada elemento será uma linha.

teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}"
end
#=> Row:0 = ["Adams", "Baker", "Clark", "Davis"]
#=> Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
#=> Row:2 = ["Perez", "Scott", "Smith", "Young"]
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]


# Para iterar sobre os elementos individuais dentro de cada linha, você precisará aninhar outro método enumerável dentro.

teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end
end
#=> Row:0 Column:0 = Adams
#=> Row:0 Column:1 = Baker
#=> Row:0 Column:2 = Clark
#=> Row:0 Column:3 = Davis
#=> Row:1 Column:0 = Jones
#=> Row:1 Column:1 = Lewis
#=> Row:1 Column:2 = Lopez
#=> Row:1 Column:3 = Moore
#=> Row:2 Column:0 = Perez
#=> Row:2 Column:1 = Scott
#=> Row:2 Column:2 = Smith
#=> Row:2 Column:3 = Young
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]



# Embora esses exemplos sejam um pouco artificiais, é importante observar que, se precisarmos apenas do nome de cada professor, seria benéfico usá-lo #flattenantes da iteração.


teacher_mailboxes.flatten.each do |teacher|
  puts "#{teacher} is amazing!"
end
#=> Adams is amazing!
#=> Baker is amazing!
#=> Clark is amazing!
#=> Davis is amazing!
#=> Jones is amazing!
#=> Lewis is amazing!
#=> Lopez is amazing!
#=> Moore is amazing!
#=> Perez is amazing!
#=> Scott is amazing!
#=> Smith is amazing!
#=> Young is amazing!
#=> ["Adams", "Baker", "Clark", "Davis", "Jones", "Lewis", "Lopez", "Moore", "Perez", "Scott", "Smith", "Young"]


# Agora, vamos dar uma olhada em um exemplo mais complicado de aninhamento de dois predicados enumeráveis ​​juntos. Usando o array aninhado de notas de teste acima, vamos determinar se algum aluno pontuou mais que 80 em tudo.

test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

test_scores.any? do |scores|
  scores.all? { |score| score > 80 }
end
#=> false

# Isso parece bem direto. Ele retorna falso, porque nenhuma das matrizes aninhadas tem pontuações acima de 80. O que você acha que vai acontecer se trocarmos #any?e #all?? Você acha que teremos os mesmos resultados?

test_scores.all? do |scores|
  scores.any? { |score| score > 80 }
end
#=> true


# Os resultados são diferentes, porque agora ele está determinando se todas as matrizes aninhadas contêm algum número acima de 80. Isso retorna verdadeiro, porque cada uma das matrizes aninhadas tem pelo menos um número acima de 80.

# Hashes aninhados
# Os hashes que você viu até agora têm pares chave/valor únicos. No entanto, assim como arrays, eles podem ser aninhados ou multidimensionais. Hashes aninhados são uma maneira muito comum de armazenar dados associados complexos.

vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}


# Acessando dados
# Acessar um elemento específico em um hash aninhado é muito similar a um array aninhado. É feito chamando hash[:x][:y], onde :xé a chave do hash e :yé a chave do hash aninhado.

vehicles[:alice][:year]
#=> 2019
vehicles[:blake][:make]
#=> "Volkswagen"
vehicles[:caleb][:model]
#=> "Accord"













# EXEMPLO BLACK BOX --------------------------------------
teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row: #{row_index}"
  row.each_with_index do |cell, cell_index|
    puts "Cell: #{cell_index}, Value: #{cell}"
  end
end

# Output
# Row: 0
# Cell: 0, Value: Adams
# Cell: 1, Value: Baker
# Cell: 2, Value: Clark
# Cell: 3, Value: Davis
# Row: 1
# Cell: 0, Value: Jones
# Cell: 1, Value: Lewis
# Cell: 2, Value: Lopez
# Cell: 3, Value: Moore
# Row: 2
# Cell: 0, Value: Perez
# Cell: 1, Value: Scott
# Cell: 2, Value: Smith
# Cell: 3, Value: Young

# Você também pode usar o #eachmétodo para iterar sobre uma matriz aninhada, mas você precisará de um loop aninhado para acessar cada elemento aninhado.

teacher_mailboxes.each do |row|
  row.each do |cell|
    puts cell
  end
end

# Output
# Adams
# Baker
# Clark
# Davis
# Jones
# Lewis
# Lopez
# Moore
# Perez
# Scott
# Smith
# Young

# Hashes aninhados
# Hashes também podem conter qualquer tipo de dado, incluindo outros hashes. Um hash que contém outros hashes é chamado de hash aninhado.

# Hashes aninhados podem ser úteis para armazenar dados relacionados ou dados que precisam ser acessados ​​por mais de uma chave. O seguinte hash aninhado de informações de contato está armazenando dados relacionados e o hash de informações de contato do professor está armazenando dados que precisam ser acessados ​​por mais de uma chave.

contact_info = {
  "Sharon" => {
    "phone" => "555-1234",
    "email" => "