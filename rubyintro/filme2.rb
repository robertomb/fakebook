# encoding: utf-8
filme_biologia = 'Reproducao humana'
filme_disney = 'Mickey'

class Pessoa
	
	attr_accessor :nome, :idade

	def pode_assistir_filmes_adultos?
		@idade>=18
	end

	def assistir(filme)
		puts "Assistido: #{filme}"
	end

end

joao = Pessoa.new
joao.nome = 'João'
joao.idade = 18

if joao.pode_assistir_filmes_adultos?
	joao.assistir(filme_biologia)
else
	joao.assistir(filme_disney)
end