class Actor 
#   attr_reader :name

  def initialize(name)
    @name = name
  end

  def ready? 
    sleep(3)
    true
  end

  def act 
    "I love you, Baby"
  end

  def fall_off_ladder 
    "Call my agent! NO way!"
  end

  def light_on_fire 
    false
  end
end

class Movie 
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting 
    if actor.ready?
       puts actor.act
       puts actor.fall_off_ladder
       puts actor.light_on_fire
    end 
  end
end

# actor = Actor.new("Sam Hills")
# movie = Movie.new("Game of Thrones")
# movie.start_shooting

RSpec.describe Movie do 
  let(:stuntman) { double("Mr. Danger", ready?: true, act: "Any string", fall_off_ladder: "Any other sctring", light_on_fire: true) }
  subject { described_class.new(stuntman) } 

  it 'expects an actor to do 3 actions' do
    expect(stuntman).to receive(:ready?)
    expect(stuntman).to receive(:act)
    expect(stuntman).to receive(:fall_off_ladder)
    expect(stuntman).to receive(:light_on_fire)
    subject.start_shooting
  end
end