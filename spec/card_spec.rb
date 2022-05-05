class Card
  attr_reader :rank, :suit
  
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  it 'has a ace' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end

  it 'has a spades' do
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')
  end
end