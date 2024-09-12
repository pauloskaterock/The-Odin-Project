# Concatenação
# No verdadeiro estilo Ruby, há muitas maneiras de concatenar strings.


# With the plus operator:
"Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"
#-----------------------------------------------------------------------
# Substrings
# Você pode acessar strings dentro de strings. Stringception! É super fácil também.


"hello"[0]      #=> "h"

"hello"[0..1]   #=> "he"

"hello"[0, 4]   #=> "hell"

"hello"[-1]     #=> "o"

# ----------------------------------------------------------------

# Caracteres de escape
# Caracteres de escape permitem que você digite representações de caracteres de espaço em branco e inclua aspas dentro da sua string sem terminá-la acidentalmente. Como lembrete, caracteres de escape funcionam somente dentro de aspas duplas.


\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
# \"  #=> Double quotation mark
# \'  #=> Single quotation mark

# -------------------------------------------------------------------------------------

# Interpolação
# A interpolação de string permite que você avalie uma string que contém variáveis ​​de espaço reservado. Esta é uma técnica muito útil e comum, então você provavelmente vai se pegar usando isso com frequência. Certifique-se de usar aspas duplas para que a interpolação de string funcione!

name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"

# ---------------------------METODOS STRING-----------------------------

"hello".include?("lo")  #=> true

"hello".include?("z")   #=> false



"hello".capitalize #=> "Hello"
"hello".upcase  #=> "HELLO"

"hello".empty?  #=> false
"".empty?       #=> true

"hello".length  #=> 5


"hello".reverse  #=> "olleh"


"hello world".split  #=> ["hello", "world"]

"hello".split("")    #=> ["h", "e", "l", "l", "o"]

" hello, world   ".strip  #=> "hello, world"

"he77o".sub("7", "l")           #=> "hel7o"

"he77o".gsub("7", "l")          #=> "hello"

"hello".insert(-1, " dude")     #=> "hello dude"

"hello world".delete("l")       #=> "heo word"

"!".prepend("hello, ", "world") #=> "hello, world!"

5.to_s        #=> "5"

nil.to_s      #=> ""

:symbol.to_s  #=> "symbol"








