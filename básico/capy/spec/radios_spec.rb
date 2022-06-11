
describe 'Botões de Rádio', :radio do

    before(:each) do 
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'Marcando opçao por ID' do 
        choose('thor')
    end

    it 'Marcando opção por valor' do 
        find('input[value=the-avengers]').click
    end
end