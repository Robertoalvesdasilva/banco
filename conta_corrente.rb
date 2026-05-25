require_relative "conta"

class ContaCorrente

  attr_reader :limite

  def initialize(numero, titular)
    super(numero, titular)
    @limite = 150
  end
end
