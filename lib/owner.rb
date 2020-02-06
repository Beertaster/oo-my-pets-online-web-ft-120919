class Owner
  @@all= []
  attr_accessor :pets
  attr_reader :species, :name
  
  def initialize(name = "Victoria", species = "human")
    @name = name
    @species = species
    @@all << self
    @pets = {:dogs => [], :cats => []} #not used atm
    @cats = {:cats => []}
    @dogs = {:dogs => []}
  end
  
  def buy_dog(dog_name)
    @dogs << Dog.new(dog_name)
  end

  def buy_cat(cat_name)
    @cats << Cat.new(cat_name)
  end

  def walk_dogs
    @dogs.collect do |type, instances|
      if type == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end
  
  def feed_cats
    @cats.collect do |type, instances|
      if type == :cats
        instances.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end
  #overkill at the moment, but hasn't broken anything
  def sell_pets
    @cats.collect do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
    @dogs.collect do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end
  
  def list_pets
    return "There are #{@dogs.size} dogs, and #{@cats.size} cats."
  end
  def list_cats
    @cats
  end
  
  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.size
  end

end