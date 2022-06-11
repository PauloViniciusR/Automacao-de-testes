require_relative '../../app/bank'

describe ContaPoupanca do 
    describe 'Saque em Conta Poupança' do
        context 'Quando o saldo é positivo' do
            before(:all) do
                @cp = ContaPoupanca.new(3500.00)
                @cp.saca(500.00)
            end

            it 'Então atualiza meu saldo' do
                expect(@cp.saldo).to eql 3000.00
            end
        end

        context 'Quando o saldo é zero' do
            before(:all) do
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(10.00)
            end

            it 'Então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente' 
            end

            it 'E meu saldo permanece com valor anterior' do
                expect(@cp.saldo).to eql 0.00
            end
        end

        context 'Quando o saldo é insuficiente' do
            before(:all) do
                @cp = ContaPoupanca.new(370.00)
                @cp.saca(450.00)
            end

            it 'Então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente' 
            end

            it 'E meu saldo permanece com valor anterior' do
                expect(@cp.saldo).to eql 370.00
            end
        end

        context 'Quando ultrapassa limite de saque' do
            before(:all) do
                @cp = ContaPoupanca.new(10000.00)
                @cp.saca(1500.00)
            end

            it 'Então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Valor máximo para saque é de 1000'
            end
        end
    end    
end
