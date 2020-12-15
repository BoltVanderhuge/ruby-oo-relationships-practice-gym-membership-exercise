class Lifter
  attr_reader :name, :lift_total
  @@all = []
  
  def self.all
    @@all
  end



  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def my_gyms
    Membership.all.select {|membership|membership.lifter == self}
  end

  def my_memberships_to
    self.my_gyms.map {|membership| membership.gym}
  end

  def self.avg_lift_total
    self.all.inject(0) {|memo, lifter| memo + lifter.lift_total}
  end

  def memberships_total
    self.my_gyms.inject(0) {|memo, membership| memo + membership.cost}
  end

  def new_gym(gym,cost)
    Membership.new(cost,gym,self)
  end

end
