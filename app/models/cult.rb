class Cult

  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|cult| cult.name == name}
  end

  def self.find_by_location(location)
    self.all.select {|cult| cult.location == location}
  end

  def self.find_by_founding_year(year)
    self.all.select {|cult| cult.founding_year == year}
  end

  def average_age
     total =followers.reduce(0){|num, follower| num + follower.age}
     av = total/followers.length 
     av.to_f
    end 

  def blood_oaths
    BloodOath.all.select {|bloodoath| bloodoath.cult == self}
  end

  def followers
    blood_oaths.map {|bloodoath| bloodoath.follower}
  end

  def cult_population
    followers.length
  end

  def recruit_follower(follower)
      BloodOath.new(follower, self)
  end

  def my_followers_mottos
    followers.map {|follower| follower.life_motto}
  end

  def self.least_popular
    self.all.min_by {|cult| cult.followers.length}
  end 

  def self.locations
    self.all.map {|cult| cult.location}
  end 

  def self.most_common_location 
    locations = self.locations 
    counts = Hash.new(0)
    locations.each {|location| location[count] +=1}
    common_location =counts.max_by{|k,v| v}
  end 

end