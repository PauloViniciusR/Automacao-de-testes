

class Conta
    attr_accessor :saldo, :saque, :nome, :banco

    def initialize(nome, banco)
        self.saldo = 1000.00
        self.saque = saque
        self.nome = nome
        self.banco = banco
    end

    def pix(valor)
        self.saldo += valor
            puts "#{nome}, você recebeu um Pix de R$#{valor} na sua conta #{banco}"
    end

    def saca(saque)
        self.saldo -= saque
            puts "#{nome}, você retirou o valor de R$#{saque} da sua conta #{banco}"
    end

end

    mov = Conta.new('Paulo', 'Nubank')
        
        # mov.pix(500.00)
        #     puts "Seu saldo é: R$#{mov.saldo}"

        # mov.pix(37.15)
        #     puts "Seu saldo é: R$#{mov.saldo}"    

         mov.saca(200.00)
            puts "Seu saldo é: R$#{mov.saldo}"