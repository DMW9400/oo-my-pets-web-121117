require 'pry'
class Owner

  require_relative "cat"
  require_relative "dog"
  require_relative "fish"

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @name = name

    @@all << self
    @@count +=1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end
  def name
    @name
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    # binding.pry
    self.pets[:dogs][0].mood = "happy"
  end
  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end
  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end
  def sell_pets
    self.pets.values.each do |pet_array|
      pet_array.each do |animal_instance|
        animal_instance.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    # binding.pry
    fish_count = self.pets[:fishes].length
    cat_count = self.pets[:cats].length
    dog_count = self.pets[:dogs].length
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end

# test_owner = Owner.new("Bob")
