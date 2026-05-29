require_relative "lib/conta"
require_relative "lib/conta_corrente"
require_relative "lib/conta_poupanca"
maria = ContaCorrente.new(2, "Maria Clara")
joao = ContaPoupanca.new(1, "João Barbosa")


 joao.depositar 1050
 maria.depositar 1000
 maria.sacar 50
 joao.sacar 10 
 maria.sacar 1100
 joao.receber
#joao.transferir(maria, 100)
#puts "#{joao.titular} - Saldo R$ #{'%.2f' % joao.saldo}"
#puts "#{maria.titular} - Saldo R$ #{'%.2f' % maria.saldo}"
#maria.exibir_saldo
puts "\n=== João ==="
puts "Saldo R$ #{'%.2f' % joao.saldo}"

puts "\n=== Maria ==="
maria.exibir_saldo






