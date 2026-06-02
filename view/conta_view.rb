require_relative "../lib/conta"

class ContaView

   def initialize(data)
    @data = data
  end

  def menu_conta

    loop do

      puts "\n=== MENU CONTA ==="
      puts "1 - Listar Contas"
      puts "2 - Cadastrar Conta"
      puts "3 - Depositar"
      puts "4 - Sacar"
      puts "5 - Exibir Saldo"
      puts "0 - Voltar"

      print "Escolha: "
      escolha = gets.chomp.to_i

      case escolha

     when 1
        puts @data.listar

      when 2
        print "Número da conta: "
        numero = gets.chomp

        print "Nome do titular: "
        titular = gets.chomp

        @data.add(Conta.new(numero, titular))

        puts "Conta cadastrada!"

      when 3
        print "Número da conta: "
        numero = gets.chomp

        conta = @data.buscar(numero)

        if conta
          print "Valor do depósito: "
          valor = gets.chomp.to_f

          conta.depositar(valor)
          puts "Depósito realizado!"
        else
          puts "Conta não encontrada!"
        end

      when 4
        print "Número da conta: "
        numero = gets.chomp

        conta = @data.buscar(numero)

        if conta
          print "Valor do saque: "
          valor = gets.chomp.to_f

          conta.sacar(valor)
        else
          puts "Conta não encontrada!"
        end

      when 5
        print "Número da conta: "
        numero = gets.chomp

        conta = @data.buscar(numero)

        if conta
          conta.exibir_saldo
        else
          puts "Conta não encontrada!"
        end

      when 0
        break

      else
        puts "Opção inválida!"

      end

    end

  end

end

