# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

#************************************************************************************

class Unicorn
    def initialize(name)
        @name = name
        @color = "Silver"
    end

    def say(message)
        puts "*~* #{message} *~*"
    end

end

unicorn1 = Unicorn.new("Galadriel")
p unicorn1
unicorn1.say("Why did you bring me here? I was hanging out with my unicorn bros")
    
#************************************************************************************

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

#************************************************************************************

class Vampire
    def initialize(name, pet = "Bat")
        
        @name = name
        @pet = pet
        @thirst = true

    end

    def drink
        @thirst = false
    end
end

vamp1 = Vampire.new("Brandon")
vamp2 = Vampire.new("Sandra", "Human")

p vamp1
p vamp2

vamp2.drink

p vamp2

#************************************************************************************

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon

    attr_reader :is_hungry
    attr_reader :meals

    def initialize(name, rider, color)

        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @meals = 0

    end

    def eat
      

        if @meals > 4
            puts "Can't eat anymore. Too full."
        elsif @meals == 4
            puts "Thank you, I'm full now."
            is_hungry = false
        else
            puts "nom nom"
            @meals = @meals + 1
        end
    end
end

draco = Dragon.new("Harambe", "Gandalf", "Black")
p draco
draco.eat
draco.eat
draco.eat
draco.eat
draco.eat
p draco




#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attrisibute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    def initialize(name, disposition)
      @name = name
      @disposition = disposition
      @age = 98
      @is_adult = false
      @is_old = false
      @has_ring = @name == 'Frodo'
  
      def celebrate_birthday
        @age += 1
        puts "Happy birthday, you are now #{@age}"
        if @age >= 101
          @is_old = true
          puts "And you're old!"
        elsif @age >= 33
          @is_adult = true
          puts "And you're an adult!"
        end
      end
    end
  end
  
  frodo = Hobbit.new('Frodo', 'Whiny')
  p frodo
  
  bilbo = Hobbit.new('Bilbo', 'Tired')
  p bilbo
  
  bilbo.celebrate_birthday
  bilbo.celebrate_birthday
  bilbo.celebrate_birthday
  p bilbo
  
 