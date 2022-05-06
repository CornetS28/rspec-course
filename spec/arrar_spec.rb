RSpec.describe Array do
  it 'takes an array of string' do 
    expect(subject.length).to eq(0) 
   
    subject.push("Ball")
    puts subject
    puts subject.class 
    expect(subject.length).to eq(1) 
  end
end