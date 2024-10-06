# Constants
PI = 3.14
MAX_USERS = 100

# Variables
user_count = 0
user_name = ""
#Local variables are regularly named, they are usually placed inside methods
#Global variables begin with $
$Department = "CSE"

# Get user input
print "Enter your name: "
user_name = gets.chomp

# Update user count
user_count += 1

# Output details
puts "#{user_name}, you are user number #{user_count}."
puts "The value of PI is #{PI}."
puts "The maximum number of users is #{MAX_USERS}."
puts "You are a student of the #{$Department} department"