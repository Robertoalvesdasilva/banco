require_relative "lib/conta"
require_relative "lib/conta-corrente"



joao = Conta.new(1, "João Barbosa")
maria = Conta.new(2, "Maria Clara")

 joao.depositar 1050
 maria.depositar 1000

# joao.sacar 2000
# maria.sacar 550

joao.transferir(maria, 100)
puts "#{joao.titular} - Saldo R$ #{'%.2f' % joao.saldo}"
puts "#{maria.titular} - Saldo R$ #{'%.2f' % maria.saldo}"







