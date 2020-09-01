require 'pry'
require 'bundler/setup'
Bundler.require
require_rel '../app'

potter = Cult.new("Potter Followers", "London", 2005, "Will die for Harry")
vegans = Cult.new("Apple Life", "Boulder", 2019, "Eat apple not meat")
greeters=Cult.new("Great Wheel", "London", 2007, "Go further and further")

agata = Follower.new("Agata", 18, "Life is good")
tom = Follower.new("Tom", 26, "Keep breathing")
hailey = Follower.new("Hailey", 26, "Yoooo")

oath1 = BloodOath.new(tom, vegans)
oath2 = BloodOath.new(agata, potter)
oath3 = BloodOath.new(hailey, potter)

binding.pry 
0 





