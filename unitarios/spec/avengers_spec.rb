

class AvengerHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end


describe AvengerHeadQuarter do 

    it 'Deve adicionar um vingador' do

        hq = AvengerHeadQuarter.new

            hq.put('Spiderman')
                expect(hq.list).to eql ['Spiderman']
    end

    it 'deve conter um vingador da lista' do

        hq = AvengerHeadQuarter.new

            hq.put('Thor')
            hq.put('Homem de ferro')
            hq.put('Capitão América')
            hq.put('Iroman')

                expect(hq.list).to include 'Capitão América'
    end

    it 'deve verificar se há uma lista' do

        hq = AvengerHeadQuarter.new

            hq.put ('Stranger')
            hq.put('Wanda')
            hq.put('Gavião arqueiro')
            hq.put('America chaves')

            res = hq.list.size > 0
                expect(hq.list.size).to be > 0
                expect(res).to be true

    end

    it 'Thor deve ser o primeiro da lista' do

        hq = AvengerHeadQuarter.new

        hq.put('Thor')
        hq.put('Homem de ferro')
        hq.put('Capitão América')
        hq.put('Iroman')

            expect(hq.list).to start_with 'Thor'
    end

    it 'Homem de ferro deve ser o último da lista' do

        hq = AvengerHeadQuarter.new

        hq.put('Thor')
        hq.put('Capitão América')
        hq.put('Iroman')
        hq.put('Homem de ferro')

            expect(hq.list).to end_with 'Homem de ferro'
            
    end

        it 'deve conter um sobrenome' do

            avenger = 'Peter Parker'
                expect(avenger).to match (/Parker/)
                expect(avenger).to_not match (/Paulo/)
    end
end
