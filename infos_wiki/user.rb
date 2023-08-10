class Membro
    def initialize(nick, patente)
        @nick = nick
        @patente = patente
    end

    def exb()
            puts "#{@nick} / patente: #{@patente}"
    end
end

criar = Membro.new("Gabriel", "Ouro")
criar.exb