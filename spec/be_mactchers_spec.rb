RSpec.describe "be matchers" do
  it 'can test truthiness' do 
    expect(true).to be_truthy
    expect('Hello').to be_truthy
    expect(5).to be_truthy
    expect(0).to be_truthy
    expect(-1).to be_truthy
    expect(3.24).to be_truthy
    expect([]).to be_truthy
    expect([9, 5]).to be_truthy
    expect({}).to be_truthy
    expect(:symbol).to be_truthy
  end

  it 'can test fot falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    my_hash = { a: 4 }
    expect(my_hash[:b]).to be_nil
  end
end