# encoding: utf-8

#print "João"

#string
meu_nome = 'João'

#integer
idade = 18

#decimal
altura = 1.75

#boolean
rico = true #false

#array
familia = [meu_nome, 'Maria', 'José']
#familia[0]

familia.each { |nome| puts "#{nome.upcase} faz parte da minha família" }

#dicionario,hash
pessoa = ['João', 18, true]
pessoa = {nome: 'João', idade: '18', rico: true}
pessoa[:idade]