class Membership
  attr_reader :cost
  attr_accessor :gym, :lifter
  @@all = []
  
  def self.all
    @@all
  end

  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@all << self
  end


end
