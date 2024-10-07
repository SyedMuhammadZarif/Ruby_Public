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