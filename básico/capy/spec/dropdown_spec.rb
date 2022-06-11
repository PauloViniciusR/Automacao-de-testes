
describe 'Caixa de opções', :dropdown do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    end

    it 'Selecionando avenger ID' do
        
        select('Bruce Banner', from: 'dropdown')
    end

    
    it 'Selecionando avenger por valor' do

        avengers = find('.avenger-list')
        avengers.find('option', text: 'Loki').select_option
    end

    
    it 'Selecionando avenger aleatorio', :sample do

        avengers = find('.avenger-list')
        avengers.all('option').sample.select_option
    end

    after(:each) do
        sleep 2

    end
end
