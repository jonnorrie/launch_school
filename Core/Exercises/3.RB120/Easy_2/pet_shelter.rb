class Pet
  attr_accessor :species, :name
  def initialize(species, name)
    @species = species
    @name = name
    Shelter.print_unadopted << self
  end
end

class Owner
  attr_accessor :pets, :name

  def initialize(name)
    @name = name
    @pets = []
  end

  def add_pet(pet)
    @pets << pet
  end

  def number_of_pets
    @pets.size
  end
end

class Shelter

  @@list_of_owners = []
  @@list_of_unadopted_pets = []

  def adopt(owner, pet)
    @@list_of_owners << owner if !@@list_of_owners.include?(owner)
    owner.add_pet(pet)
    @@list_of_unadopted_pets.delete(pet)
  end

  def print_adoptions
    @@list_of_owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.pets.each do |pet|
        puts "a #{pet.species} named #{pet.name}"
      end
      puts ""
    end
  end

  def self.print_unadopted
    @@list_of_unadopted_pets
  end

  def print_unadopted
    puts "The Animal shelter has #{@@list_of_unadopted_pets.length} unadopted pets."
    puts ""
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
stella = Pet.new('cat', 'Stella')
bella = Pet.new('cat', 'Bella')
frankie = Pet.new('dog', 'Frankie')
asta = Pet.new('dog', 'Asta')
laddie = Pet.new('dog', 'Laddie')
fluffy = Pet.new('cat', 'Fluffy')
kat = Pet.new('cat', 'Kat')
ben = Pet.new('cat', 'Ben')
chatterbox = Pet.new('parakeet', 'Chatterbox')
bluebell = Pet.new('parakeet', 'Bluebell')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
jnorrie = Owner.new('J Norrie')

shelter = Shelter.new
shelter.print_unadopted
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.adopt(jnorrie, stella)
shelter.adopt(jnorrie, bella)
shelter.adopt(jnorrie, frankie)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "#{jnorrie.name} has #{jnorrie.number_of_pets} adopted pets."
puts ""

shelter.print_unadopted