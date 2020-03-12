class Owner
  attr_reader :name, :species

  @@all = []

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def save
    @@all << self
  end

  def initialize(name)
    @name = name
    @species = 'human'

    self.save
  end

  def say_species
    "I am a #{self.species}."
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    cat = Cat.new(name)
    cat.owner = self
  end

  def buy_cat(name)
    Dog.new(name, self)
  end


end
