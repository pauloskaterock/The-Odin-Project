# O método include?
# O #include?método funciona exatamente como você acha que deveria. Se quisermos saber se um elemento específico existe em um array, podemos usar o #include?método. Este método retornará truese o elemento que você passar como argumento #include?existir no array ou hash; caso contrário, retornará false.

# Primeiro, vamos explorar como conseguiríamos isso com o #eachmétodo:

numbers = [5, 6, 7, 8]
element = 6
result = false

numbers.each do |number|
  if number == element
    result = true
    break
  end
end

result
# => true

element = 3
result = false

numbers.each do |number|
  if number == element
    result = true
    break
  end
end

result
#=> false


# Usando #include?, este código pode ser bastante simplificado:

numbers = [5, 6, 7, 8]

numbers.include?(6)
#=> true

numbers.include?(3)
#=> false

# ------------------------------
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_list = friends.select { |friend| friend != 'Brian' }

invited_list.include?('Brian')
#=> false

#--------------------------------------------------------------------------

# O método any?
# Você também pode adivinhar o que o #any?método faz. Ele retorna truese algum elemento em seu array ou hash corresponder à condição dentro do bloco; caso contrário, ele retornará false.

# Digamos que queremos ver se há algum número maior que 500 ou menor que 20 em um array de números. Primeiro, vamos ver como poderíamos conseguir isso usando #each.

numbers = [21, 42, 303, 499, 550, 811]
result = false

numbers.each do |number|
  if number > 500
    result = true
    break
  end
end

result
#=> true

numbers = [21, 42, 303, 499, 550, 811]
result = false

numbers.each do |number|
  if number < 20
    result = true
    break
  end
end

result
#=> false

# -------------------------
# Usando #any?, este código pode ser bastante simplificado:

numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 }
#=> true

numbers.any? { |number| number < 20 }
#=> false

# -----------------------------------------------------------------

# O método all?
# O all?método também é bastante intuitivo. Ele só retorna truese todos os elementos em seu array ou hash corresponderem à condição que você definiu dentro do bloco; caso contrário, ele retornará false.

# Digamos que queremos verificar se todas as palavras em nossa lista têm mais de 3 caracteres ou 6 caracteres. Primeiro, vejamos como poderíamos fazer isso usando #each:

fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false

fruits.each do |fruit|
  if fruit.length > 3
    matches.push(fruit)
  end
end

result = fruits.length == matches.length
result
#=> true

fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false

fruits.each do |fruit|
  if fruit.length > 6
    matches.push(fruit)
  end
end

result = fruits.length == matches.length
result
#=> false


# Usando #all?, este código pode ser bastante simplificado:

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.all? { |fruit| fruit.length > 3 }
#=> true

fruits.all? { |fruit| fruit.length > 6 }
#=> false

#  ------------------------------------------------------------------
# O método nenhum?
# Como você pode esperar, #none?ele retorna truesomente se a condição no bloco não corresponder a nenhum dos elementos do seu array ou hash; caso contrário, ele retorna false.

# Primeiro, vamos ver como isso pode ser alcançado usando #each. Você notará que essa abordagem é muito semelhante ao que fizemos para #all?.

fruits = ["apple", "banana", "strawberry", "pineapple"]
result = false

fruits.each do |fruit|
  if fruit.length > 10
    result = false
    break
  end

  result = true
end

result
#=> true

fruits = ["apple", "banana", "strawberry", "pineapple"]
result = false

fruits.each do |fruit|
  if fruit.length > 6
    result = false
    break
  end

  result = true
end

result
#=> false


# Usando #none?, isso pode ser bastante simplificado:

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.none? { |fruit| fruit.length > 10 }
#=> true

fruits.none? { |fruit| fruit.length > 6 }
#=> false

