class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    self.all.select {|follower| follower.age > age}
  end

  def cults
    blood_oaths.select {|blood_oath| blood_oath.followers == self}
  end

  def join_cult(cult)
      BloodOath.new(self, cult)
  end

  def my_cults_slogans
    cults.map { |cult| cult.slogan}
  end

end