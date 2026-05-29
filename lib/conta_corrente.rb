require_relative "conta"

class ContaCorrente < Conta

  attr_reader :limite

  def initialize(numero, titular)
    super(numero, titular)
    @limite = 200
  end

   def exibir_saldo
    puts "Saldo: R$ #{@saldo}"
    puts "Limite: R$ #{@limite}"
    puts "Total: R$ #{@saldo + @limite}"
   end

  def sacar valor
    return @saldo -= valor if valor <= saldo_disponivel
    puts "Saldo insulficiente"
  end

  def saldo_disponivel
     @saldo + @limite
  end
end
