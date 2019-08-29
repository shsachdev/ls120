class Pet
  attr_accessor :name, :animal

  def initialize(animal, name)
    @animal = animal
    @name = name
  end
end

class Owner
  attr_accessor :name

  def initialize(owner_name)
    @name = owner_name
    @number_of_pets = []
  end

  def number_of_pets
    @number_of_pets.size
  end

  def add_pet(pet)
    @number_of_pets << pet
  end
end

class Shelter
  attr_accessor :print_adoptions

  def initialize
    @print_adoptions = []
  end

  def adopt(owner, pet)
    owner.add_pet(pet.name)
    @print_adoptions << pet.name
  end
end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
