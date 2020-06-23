class Owner
  # code goes here
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
   
  end

  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end  
  
  def say_species
    "I am a #{species}."
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self }
  end 
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  
  #-----------------------------
  
  
  def buy_cat(name)
    @@all << Cat.new(name, self)
  end
  
  def buy_dog(name)
   @@all << Dog.new(name, self)
  end
  
  def walk_dogs(dog, mood)
    Dog.all.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats(cat, mood)
    Cat.all.each{|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    
  end
  
  def list_pets
  
  end  
end