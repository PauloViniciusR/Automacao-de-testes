describe 'Select2', :select2 do

    describe('single', :single) do

        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'Seleciona ator por nome' do
        find('.select2-selection--single').click
            sleep 1
        find('.select2-results__option', text: 'Adam Sandler').click
            sleep 3
        end

        it 'Busca e clica no ator' do 
        find('.select2-selection--single').click
            sleep 1
        find('.select2-search__field').set 'Chris Rock'
            sleep 1
        find('.select2-results__option').click
            sleep 3
        end
    end


    describe ('multiple') do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end

        it 'Seleciona atores' do 
            find('.select2-selection--multiple').click
                sleep 1
            find('.select2-search__field').set 'Jim Carrey'
                sleep 1
            find('.select2-results__options').click
                sleep 3
        end
    end




end