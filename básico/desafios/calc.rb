result = ''

    loop do 
        puts result 
            puts 'Selecione uma opção'
            puts '1- Adição'
            puts '2- Subtração'
            puts '3- Multiplicação'
            puts '4- Divisão'
            puts '0- Sair'
                print 'Opção: '

            option = gets.chomp.to_i
    
    case option
        when 1..4
            print 'Digite o primeiro número: '
                number1 = gets.chomp.to_i

            print 'Digite o segundo número: '
                number2 = gets.chomp.to_i

    case option
        when 1
            result = "#{number1} + #{number2} = #{number1 + number2}"
        when 2
            result = "#{number1} - #{number2} = #{number1 - number2}"
        when 3
            result = "#{number1} * #{number2} = #{number1 * number2}"
        when 4 
            result = "#{number1} / #{number2} = #{number1 / number2}"
        end 

    when 0
        break
    else 
        puts 'Opção inválida'
    end

        system "clear"
  end