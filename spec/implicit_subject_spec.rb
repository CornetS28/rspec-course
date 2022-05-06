RSpec.describe Hash do
#   let(:my_hash) { {} }
  
  it 'should start of empty' do 
    puts subject
    puts subject.class  
    expect(subject.length).to eq(0) 
  end
end