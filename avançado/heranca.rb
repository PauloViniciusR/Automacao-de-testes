

class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} está pronto para o trageto"
    end

    def buzinar
       puts "Beep! Beep!"
    end

end

class Carro < Veiculo
    def dirigir
        puts "#{nome} está pronto para sair"
    end

end

class Moto < Veiculo
    def pilotar
        puts "#{nome} está pronto para sair"
    end

end

    civic = Carro.new('Civic','Honda','SI')
        civic.ligar
        civic.buzinar
        civic.dirigir

    fazer = Moto.new('Fazer','Honda','250px')
        fazer.ligar
        fazer.buzinar
        fazer.pilotar