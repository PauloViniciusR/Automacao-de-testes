
describe 'Caixas de seleção', :checkbox do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end
    
    it 'Marcando com ID' do 
        check('thor')
    end

    it 'Desmarcando por ID' do
        uncheck('antman')
    end

    it 'Marcando com find set true' do
        find('input[value=black-panther]').set(true)
    end

    it 'Desmarcando com find set false' do
        find('input[value=guardians]').set(false)
    end
end