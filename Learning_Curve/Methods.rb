###basic structure of methid

def say_hello!
  puts "Hello, World"
end

say_hello! 

#methods with parameters
def greet(name)
  puts "Hello #{name}!"
  return 21 #or anything u want 

end
puts "Hello there, what is your name: "
name = gets.chomp.to_s
greet(name)

#Method with default parameter --> method(name = "Guest")

#splat operators for variable number of args

def sum(*numbers)
  numbers.sum
end
puts sum(1,2,3,4,5,2,1,2)

#also allows keyword args like mthd(name:, age:) this makes it more readable


#using blocks, this makes them reusable and flexible, pass them to methos using yield or &block

def blockmethod
  puts "This comes before the block"
  yield
  puts "this comes after the block"
end

blockmethod {puts "Inside block: "}

def blockmethod2(&block)
  puts "Ya"
  block.call
  puts "ya2"
end

blockmethod2 {puts "Inside the block: "} #{} is the identifier of the block this will execute code

def blockmethod3
  puts"Hello what is your name?: "
  yield
  puts "Hello #{NAME}"
end

blockmethod3 {NAME = gets.chomp.to_s} #holy shit this is good

#procs and lambdas

#defining a proc:
myproc = Proc.new{puts "This is executed from proc"}
myproc.call #basically its a block of code that is callable

mylambda = -> {puts "The lambda is executed"}
mylambda.call#this will always check number of arguments while proc doesnt

#aliasing
def greet 
  puts 'Hellow'
end

alias welcome greet #alias must be lowercase
welcome

#Method Scope and Visibility
#methods are public by default
#private methods are accessible from objectonly
#protected methods are accessivle within class and subclass
