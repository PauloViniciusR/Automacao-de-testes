# Ruby é uma linguagem considerada puramente orientada a objetos
# No Ruby tudo são objetos

# Classes possui atributos e métodos
# Caracteristicas e ações
 



class Carro
    attr_accessor :civic

    def ligar
        puts 'O carro está pronto para o uso'
    end
end

c = Carro.new
    c.civic = 'Civic'
        puts c.civic
    puts c.ligar 
