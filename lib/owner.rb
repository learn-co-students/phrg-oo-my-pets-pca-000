class Owner
  # code goes here
  attr_accessor :pets, :name, :fish, :cat, :dog
  @@all = []
  @@count = 0

  def initialize(name)
    @name = "human"
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count +=1
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
  end

  def self.count
    @@count
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def name
    @name
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
    dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
    cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |dog|
    dog.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animal|
        animal.each do |pet|
        pet.mood = "nervous"
      end
      animal.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
