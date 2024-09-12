# Símbolos
# Símbolos são uma reviravolta interessante na ideia de uma string. A explicação completa pode ser um pouco longa, mas aqui vai a versão curta:

# Strings podem ser alteradas, então toda vez que uma string é usada, Ruby tem que armazená-la na memória mesmo se uma string existente com o mesmo valor já existir. Símbolos, por outro lado, são armazenados na memória apenas uma vez, tornando-os mais rápidos em certas situações.

# Uma aplicação comum em que símbolos são preferidos a strings são as chaves em hashes. Abordaremos isso em detalhes na lição sobre hashes mais adiante no curso.

# Você não precisará usar muitos símbolos no começo, mas é bom se familiarizar com o que eles são e como eles se parecem para que você possa reconhecê-los.

# Crie um símbolo
# Para criar um símbolo, coloque dois pontos no início de algum texto:

:my_symbol

"string" == "string"  #=> true

"string".object_id == "string".object_id  #=> false

:symbol.object_id == :symbol.object_id    #=> true



