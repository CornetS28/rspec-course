RSpec.describe "nested hooks" do
    before(:context) do
      puts "OUTER Before context"
    end
   
    before(:example) do
      puts "OUTER Before example"
    end

    it 'is does basic math' do 
        expect(3-2).to eq(1)  
    end

    context 'nested hooks A ' do
      before(:context) do
        puts "INNER Before context"
      end
    
      before(:example) do
        puts "INNER Before example"
      end

      it 'is does basic multiplication math' do 
        expect(3 * 9).to eq(27)  
      end

      it 'is does basis subtraction basic math' do 
        expect(3 - 9).to eq(-6)  
      end
    end
end