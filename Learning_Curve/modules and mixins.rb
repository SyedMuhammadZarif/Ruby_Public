#modules and mixins
module Greeting
  def say_hello
    puts"Hello!"
  end
  
  def say_goodbye
    puts"Goodbye!"
  end
end

class Person
  include Greeting  # Include the Greeting module this is mixin
  
  def initialize(name)
    @name = name
  end
  
  def introduce
    puts"My name is #{@name}."
  end
  def getprot#getter
    puts "#{mthdx}"
  end
  protected
  def mthdx
    puts"bruh this is private"
  end
  
end

# Create an instance of Person
person = Person.new("Alice")

# Call methods from the Greeting module
person.introduce  # Output: My name is Alice.
person.say_hello   # Output: Hello!
person.say_goodbye  # Output: Goodbye!
person.getprot


module Animals_m
  class Dog
    def bark
      puts  "Woof!"
    end
  end

  class Cat
    def meow
      puts "Meow!"
    end
  end
end

# Create instances of Dog and Cat
dog = Animals_m::Dog.new
cat = Animals_m::Cat.new

# Call methods from the classes
dog.bark  # Output: Woof!
cat.meow  # Output: Meow!
