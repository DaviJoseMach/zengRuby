class ListaDeTarefas
    def initialize
      @tarefas = []
    end
  
    def adicionar_tarefa(tarefa)
      @tarefas << tarefa
    end
  
    def remover_tarefa(tarefa)
      @tarefas.delete(tarefa)
    end
  
    def exibir_tarefas
      puts "Tarefas:"
      @tarefas.each_with_index do |tarefa, index|
        puts "#{index + 1}. #{tarefa}"
      end
    end
  
    def menu
      loop do
        puts "\nDigite uma opção:"
        puts "1. Adicionar tarefa"
        puts "2. Remover tarefa"
        puts "3. Exibir tarefas"
        puts "0. Sair"
        opcao = gets.chomp.to_i
  
        case opcao
        when 1
          puts "Digite a tarefa que deseja adicionar:"
          tarefa = gets.chomp
          adicionar_tarefa(tarefa)
          puts "Tarefa adicionada com sucesso!"
        when 2
          exibir_tarefas
          puts "Digite o número da tarefa que deseja remover:"
          numero = gets.chomp.to_i
          if numero > 0 && numero <= @tarefas.length
            tarefa_removida = @tarefas[numero - 1]
            remover_tarefa(tarefa_removida)
            puts "Tarefa removida: #{tarefa_removida}"
          else
            puts "Número de tarefa inválido."
          end
        when 3
          exibir_tarefas
        when 0
          break
        else
          puts "Opção inválida. Digite novamente."
        end
      end
    end
  end
  
  # Exemplo de uso:
  lista = ListaDeTarefas.new
  lista.menu
  