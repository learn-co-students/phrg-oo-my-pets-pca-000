require 'pry'

class Owner

  attr_accessor :owner, :name, :pets
  attr_reader :species

  @@all = []
  @@owner_count = 0

  def initialize(owner)
    @species = species
    @owner = owner
    @@all << self
    @@owner_count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def species
    @species = owner
  end

  def say_species
    "I am a #{species}."
  end

  # def name=(name)
  #   @name = name
  # end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    # binding.pry
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
    # binding.pry
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
    # binding.pry
  end

  def walk_dogs
    @pets[:dogs].map { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map { |cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map { |fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species,animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
      "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
