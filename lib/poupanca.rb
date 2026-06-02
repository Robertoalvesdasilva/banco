require_relative "conta"

class ContaPoupanca < Conta

  def initialize(numero, titular)
    super(numero, titular)
  end

  def render
    @saldo *= 0.08
  end

end
