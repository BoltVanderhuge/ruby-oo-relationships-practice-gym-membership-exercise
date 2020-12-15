class Gym
  attr_reader :name
  @@all = []
  
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

    def all_members_at_this_gym
      Membership.all.select {|membership| membership.gym == self}
    end

    def lifter_at_this_gym
      self.all_members_at_this_gym.map {|membership| membership.lifter }
    end
    
    def lifter_at_this_gym_name
      self.lifter_at_this_gym.map {|lifter| lifter.name}
    end

    def combined_lift
      self.lifter_at_this_gym.inject(0) {|memo,lifter| memo + lifter.lift_total }
    end

end
