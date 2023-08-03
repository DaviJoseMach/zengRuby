class Membro
    # Atributos
    attr_accessor :ticket, :name
    
    # Método
    def initialize(ticket, name)
        @name = name
        @ticket = ticket
    end

    def exb
        puts "Salve salve meu nome é #{@name}, ticket #{@ticket}"
    end
end

# Criando um objeto da classe Membro
exxb = Membro.new(1234, "Gabs")
exxb.exb
