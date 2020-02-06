class Cat
  @@cat = []
  attr_accessor :mood, :owner
  attr_reader :name
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@cat << self
  end
  
  def self.all 
    @@cat
  end
  
end

