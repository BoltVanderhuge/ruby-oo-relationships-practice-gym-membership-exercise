# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

arnold = Lifter.new("Arnold", 500)
lou = Lifter.new("Lou", 450)

golds = Gym.new("Golds")
brooklyn = Gym.new("Brooklyn Gym")
muscles = Gym.new("Muscles")

g_pack = Membership.new(300, golds, arnold)
b_pack = Membership.new(50, brooklyn, lou)
s_pack = Membership.new(100, brooklyn, arnold)

binding.pry

puts "Gains!"
