#class definition
class Person
  def speak
    greet_private
  end

  private #this makes the following private
  
  def greet_private
    puts "Exclusive greet!"
  end
end

man = Person.new
man.speak 

#instance variables and methods

class Cat 
  def initialize(name = "Lovecraft", age=2)#you pass in variable during construction
    @name = name #this is an instance variable, it is created when calss is called
    @age = age
  end

  def introduce
    puts "I am #{@name}, the cat!"
    puts "I am #{@age} years old!"
  end
end

meow = Cat.new("Whiskers") #here the default is overriden
meow.introduce

#instance variables are unique to each instance

class Pizza

  def initialize(dough="soft", cheese="no", toppings= "no")
    @dough = dough
    @cheese = cheese
    @toppings = toppings
    print "You ordered a #{@dough} dough pizza"
    yield(self) if block_given? #self is yielded to allow it to be run from the outside
  end
  # Getter methods to access instance variables outside the class
  attr_reader :cheese, :toppings #this is a built-in ruby method
  
end


def pizzachecker(pizza)
  if pizza.cheese == "no" || pizza.cheese.nil?
    print " without cheese"
  else
    print " with #{pizza.cheese} cheese"
  end
  if pizza.toppings == "no" || pizza.toppings.nil?
    print " and no toppings"
  else
    print " and #{pizza.toppings} toppings \n"
  end
end

#attr_writer: modify instance variables, reader reads and accessor for read write
myproc = Proc.new{|piza| pizzachecker(piza)} #using procs 

newpizza = Pizza.new("crunchy","medium", "Sausage") {|piza| myproc.call(piza)} #proc must be passed inside a block

newpizza = Pizza.new(){|piza| myproc.call(piza)} #the |piza| makes newpizza the subject and then the subject is passed inside the proc

#using keyword args

class Pizza2

  def initialize(dough: "soft", cheese: "no", toppings: "no")
    @dough = dough
    @cheese = cheese
    @toppings = toppings
    print "\nYou ordered a #{@dough} dough pizza"
    yield(self) if block_given? #self is yielded to allow it to be run from the outside
  end
  # Getter methods to access instance variables outside the class
  attr_reader :cheese, :toppings,:dough #this is a built-in ruby method
  
end


def pizzachecker2(pizza)
  if pizza.cheese == "no" || pizza.cheese.nil?
    print " without cheese"
  else
    print " with #{pizza.cheese} cheese"
  end
  if pizza.toppings == "no" || pizza.toppings.nil?
    print " and no toppings"
  else
    print " and #{pizza.toppings} toppings"
  end
end

#attr_writer: modify instance variables, reader reads and accessor for read write
myproc = Proc.new{|piza| pizzachecker2(piza)} #using procs 

newpizza = Pizza2.new(toppings: "Mushroom and Beef") {|piza| myproc.call(piza)} #proc must be passed inside a block 
#would say this is the best method, it is the most flexible, hence always use keyword args


#class methods!:
class MathOperations
  def self.add(a, b)
    a + b
  end
end

puts MathOperations.add(5, 3)  # Output: 8

#INHERITANCE!!!!
class Animal
  def speak
    puts "I am an animal."
  end
  def breathe
    puts "*inhales and exhales*"
  end
end

class Dog < Animal
  def speak
    print "Woof! I am a dog."
  end
end

dog = Dog.new
dog.speak  # Output: Woof! I am a dog. #this is method overriding
dog.breathe#inherited method

#modules and mixins

#Modules are used to group related methods and can be included in classes to share functionality.

module Abilities_fish
  def swim
    puts"Look at me I can swim!"
  end
end

class Fish < Animal
  include Abilities_fish
end

goldie = Fish.new
goldie.swim
goldie.speak

class Person
  def initialize(name = "Bro")
    @name = name
  end
  
  def public_method
    puts "This is a public method."
  end
  
  private
  
  def private_method
    puts "This is a private method."
  end
  
  protected
  
  def protected_method
    puts "This is a protected method."
  end
end

person = Person.new("Alice")
person.public_method  # Output: This is a public method.
#person.private_method  # Raises an error
#person.protected_method  # Raises an error

class Person2 < Person
  
  def broski
    puts"#{protected_method}"
  end
end

pperson2 = Person2.new
pperson2.broski

