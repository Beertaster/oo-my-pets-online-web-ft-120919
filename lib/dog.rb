class Dog
  @@dog = []
  attr_accessor :mood, :owner
  attr_reader :name
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@dog << self
  end
  
  def self.all 
    @@dog
  end
  
end