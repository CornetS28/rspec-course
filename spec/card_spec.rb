class Card
  attr_reader :rank, :suit
  
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank  and that can change' do
    expect(card.rank).to eq('Ace')
    
    # card.rank 'Maliboo'
    # expect(card.rank).to eq('Maliboo')
  end

  it 'has a spades' do
    expect(card.suit).to eq('Spades')
  end
end