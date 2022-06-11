require_relative '../../app/bank'

describe ContaCorrente do 
    describe 'Saque em Conta Corrente' do
        context 'Quando o saldo é positivo' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200.00)
            end

            it 'Então atualiza meu saldo' do
                expect(@cc.saldo).to eql 800.00
            end
        end

        context 'Quando o saldo é zero' do
            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.saca(100.00)
            end

            it 'Então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente' 
            end

            it 'E seu saldo permanece zero' do
                expect(@cc.saldo).to eql 0.00
            end
        end

        context 'Quando o saldo é insuficiente' do
            before(:all) do
                @cc = ContaCorrente.new(500.00)
                @cc.saca(501)
            end

            it 'Então exibe a mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente'
            end

            it 'E saldo permanece com o valor anterior' do
                expect(@cc.saldo).to eql 500.00
            end
        end

        context 'Quando o saque é ultrapassa o limite' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(701.00)
            end

            it 'Então exibe a mensagem' do
                expect(@cc.mensagem).to eql 'Valor máximo para saque é de 700'
            end

            it 'E saldo permanece com o valor anterior' do
                expect(@cc.saldo).to eql 1000.00
            end
        end
    end
end