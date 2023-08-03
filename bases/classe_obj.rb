begin
class Pessoa
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
        @ceira = 1
    end

    def saud
        puts "Bem vindo MR.#{@nome}, #{@idade} anos #{@ceira}"
    end
end

pessoa1 = Pessoa.new("Samuel", 19)

pessoa1.saud
end