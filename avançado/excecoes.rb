
begin

    file = File.open('./ola.tt')
        if file
            puts file.read
        end
    
rescue Exception => erro

    puts "Arquivo não encontrado"

       puts erro.message
       puts erro.backtrace
    
end




