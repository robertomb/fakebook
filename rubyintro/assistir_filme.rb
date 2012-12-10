# encoding: utf-8

filme_de_biologia = 'Reprodução humana'
filme_da_disney = 'Mickey Mouse'

class Pessoa
	attr_accessor :nome, :idade

	def pode_assistir_filmes_adultos?
		@idade >=18
	end

	def assistir(filme)
		puts "Assistindo: #{filme}"
	end
end

joao = Pessoa.new
joao.nome = 'João'
joao.idade = 19

if joao.pode_assistir_filmes_adultos?
	joao.assistir(filme_de_biologia)
else
	joao.assistir(filme_da_disney)
end

# print joao.nome
# print joao.idade

jose = Pessoa.new
jose.nome = 'José'
jose.idade = 17

# print jose.nome
# print jose.idade
