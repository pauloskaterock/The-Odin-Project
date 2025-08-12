i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end
################################################
# Um whileloop é semelhante ao looploop, exceto que você declara a condição que interromperá o loop logo no início.

i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end

##############################################
# Você também pode usar whileloops para fazer uma pergunta repetidamente ao usuário até que ele dê a resposta desejada:

while gets.chomp != "yes" do
  puts "Are we there yet?"
end

##############################################
# Podemos reescrever nossos whileexemplos de loop usando until.

i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end

# Você pode ver aqui que usar untilsignifica que o loop continuará em execução até que a condição i >= 10 seja verdadeira.


# O próximo exemplo mostra como você pode usar untilpara evitar a negação !que o whileloop acima teve que usar.

until gets.chomp == "yes" do
  puts "Do you like Pizza?"
end
############################################

# range para definir um intervalo. Tudo o que precisamos fazer é dar a Ruby o valor inicial, o valor final e se queremos que o range seja inclusivo ou exclusivo.

(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d
##############################################
# Um for loop é usado para iterar por uma coleção de informações, como um array ou intervalo. Esses loops são úteis se você precisa fazer algo um determinado número de vezes enquanto também usa um iterador.

for i in 0..5
  puts "#{i} zombies incoming!"
end
###########################################
# Tempos em loop
# Se você precisa executar um loop por um número especificado de vezes, então não procure mais do que o confiável #timesloop. Ele funciona iterando por um loop um número especificado de vezes e ainda joga o bônus de acessar o número que ele está iterando atualmente.

5.times do
  puts "Hello, world!"
end
# Tenho certeza de que você consegue adivinhar o que esse código faz. Ruby é facilmente legível dessa forma!

5.times do |number|
  puts "Alternative fact number #{number}"
end
# Lembre-se de que os loops começarão a contar a partir de um índice zero, a menos que especificado de outra forma, então a primeira iteração do loop produzirá Alternative fact number 0.
##################################################
# Loops Upto e Downto
# Os métodos Ruby #uptoe #downtofazem exatamente o que você acha que eles fazem a partir de seus nomes. Você pode usar esses métodos para iterar de um número inicial para cima ou para baixo para outro número, respectivamente.

5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) { |num| print "#{num} " }   #=> 10 9 8 7 6 5
# Se você precisa percorrer uma série de números (ou até mesmo letras) dentro de um intervalo específico, então esses são os loops para você.