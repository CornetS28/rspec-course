class Royal 
  attr_reader :name
  
  def initialize(name='Ruby')
    @name = name
  end
end

RSpec.describe Royal do 
  subject { described_class.new('King Arthur') }
  let(:paul) {described_class.new('Paul')}

  it 'is an notarian person' do
    expect(subject.name).to eq('King Arthur')
    expect(paul.name).to eq('Paul')
  end

end 