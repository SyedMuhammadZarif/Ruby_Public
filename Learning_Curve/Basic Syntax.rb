#this will print with a new line character in the end
puts "Hello World" 
#this will print without a new line character in the end
print "Hello World"
puts
puts
puts
=begin this is a multi line
comment, way better than the other languages xD
=end

#whitespaces, ruby is not whitespace or indent sensitive however, adding whitespaces differentiates us from animals that coded Fall Out new vegas

#DATA TYPES IN RUBY

#integers
integer = 42
#example usage:
age = 23
#floats
float = 3.34
#example usage:
CGPA = 3.12
#Strings:
name = "Syed Muhammad Zarif"

puts "Hello #{name}!"
puts "You are #{age} years old!"
puts "You have a CGPA of #{CGPA}"

# Symbols are used as keys in hashes
symbol = :this_is_a_symbol

#arrays
arr = [1,2,3,4]
students = ["Syed", "Muhammad", "Zarif"]
#this will print the array with the structure
print students
puts
#this will print the array elements in separate lines
puts students


#Hashes:
# Hashes are Key Value Pairs, like dictionaries

puts
puts
puts "these are printed from the hash: "
Intern_info = {"name"=>"Syed Muhammad Zarif", "age" => 23}

puts "Hello #{Intern_info["name"]}!"
puts "You are #{Intern_info[ "age"]} years old!"

#Variables have already been covered above
# constants start with Upper case letters
#Instance variables start with @
# Class variables start with @@

#Taking Basic Input:
# This program greets the user

# Constant
GREETING = "Hello"

# Get user input
puts "Enter your name: "
name = gets.chomp

# Output the greeting
puts "#{GREETING}, #{name}!"  # Interpolation

#Get user input and convert to integer

puts"Enter your Age: "
age = gets.chomp.to_i
puts"you are #{age} years old!"