RSpec.describe Hash do
  subject(:fullname) do
    {name: "Will", lastname: "Smith"}
  end 
  
  it 'has 2 key-value pair' do 
    expect(fullname.length).to eq(2) #or
    expect(subject.length).to eq(2) 
  end
end