puts "insira seu nome: "
pessoa = gets.chomp.to_s

puts "Seja bem vindo: #{pessoa}  Vamos começar a brincadeira?" 

class AdivinharNumero
	attr_reader :numero #ou , :venceu // na mesma linha
	attr_reader :venceu


	def initialize
		@numero = Random.rand(1..10)
		@venceu = false
	end

	def tenta_adivinhar(numero = 0)
		if numero == @numero 
			return "Você acertou"
			@venceu = true
		elsif numero > @numero
			return "O número está muito alto"
		elsif numero < @numero 
			return "O número está muito baixo"
		end
			
	end
end

jogo = AdivinharNumero.new

until jogo.venceu do
puts "Tente acertar o número escolhido pelo nosso ruby entre 1 e 10. Boa sorte!! "
numero = gets.to_i



puts jogo.tenta_adivinhar(numero)

end
