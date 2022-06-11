class Conta
    attr_accessor :saldo, :mensagem
    
    def initialize(saldo)
        self.saldo = saldo
    end

    def saca(valor, max)
        if(valor > self.saldo)
            self.mensagem = 'Saldo insuficiente' 
        elsif (valor > max)
            self.mensagem = 'Valor máximo para saque é de ' + max.to_s
        else
            self.saldo -= valor
        end
    end
end

class ContaCorrente < Conta
    def saca(valor, max = 700)
        super
    end
end

class ContaPoupanca < Conta
    def saca(valor, max = 1000)
        super
    end
end
