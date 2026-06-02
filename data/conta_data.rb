class ContaData

  def initialize
    @contas = []
  end

  def add(conta)
    @contas << conta
  end

  def listar
    @contas
  end

  def buscar(numero)
    @contas.find { |conta| conta.numero == numero }
  end

end
