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
end
