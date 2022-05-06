RSpec.describe Array do
  subject(:sally) do
    []
  end

  context "deals with an array" do 
    subject(:sally) {[3, 5]}
  
    it 'get the example sally' do
      expect(subject.length).to eq(2)
      subject.pop
      expect(subject.length).to eq(1)
    end

    it 'confirm that sally has 3 and 5' do
      expect(sally).to eq([3, 5])
    end
  end

end