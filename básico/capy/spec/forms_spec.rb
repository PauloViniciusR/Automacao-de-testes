

describe 'Forms' do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/login'
    end
    
    it 'Login com sucesso' do

        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis!'

            click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'Senha inválida' do
    
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis'

            click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Senha é invalida!'
    end

    it 'Usuário não encotrado' do
    
        fill_in 'username', with: 'CapitãoAmerica' 
        fill_in 'passId', with: 'jarvis!'

            click_button 'Login'
        
        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end

    after(:each) do
        sleep 2
    end
end

