# Digamos que, por qualquer razão, precisamos escrever um método que pegue uma string e verifique se a string é um isograma (uma palavra que não tem letras repetidas) ou não. Talvez seja uma situação de refém que exija um depurador profissional?

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split
  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")

#=> false


#------


irb(main):001:1* def isogram?(string)
irb(main):002:1*   original_length = string.length
irb(main):003:1*   string_array = string.downcase.split
irb(main):004:1*   unique_length = string_array.uniq.length
irb(main):005:1*
irb(main):006:1*   p unique_length
irb(main):007:1*
irb(main):008:1*   original_length == unique_length
irb(main):009:0> end
=> :isogram?
irb(main):010:0> isogram?("Odin")
1
=> false


#---------
# INTERESSANTE . Usar pon unique_lengthimprime no console e nos mostra que algo deve estar errado com a forma como chamamos #uniqon string_arrayporque sabemos que temos 4caracteres únicos em nossa entrada, mas obtivemos 1como saída. Para verificação, vamos colocar outra pdeclaração antes da unique_lengthdeclaração:

irb(main):001:1* def isogram?(string)
irb(main):002:1*   original_length = string.length
irb(main):003:1*   string_array = string.downcase.split
irb(main):004:1*
irb(main):005:1*   p string_array
irb(main):006:1*
irb(main):007:1*   unique_length = string_array.uniq.length
irb(main):008:1*
irb(main):009:1*   p unique_length
irb(main):010:1*
irb(main):011:1*   original_length == unique_length
irb(main):012:0> end
=> :isogram?
irb(main):013:0> isogram?("Odin")
["odin"]
1
=> false



