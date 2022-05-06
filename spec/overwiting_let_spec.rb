class ProgrammingLanguage 
  attr_reader :name
  
  def initialize(name='Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do 
  let(:language) { ProgrammingLanguage.new('ReactJS') }

  it 'store the name of the language' do
    expect(language.name).to eq('ReactJS')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }
    it 'should default to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end 
