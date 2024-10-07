name = "Alice"         # String in double quotes
greeting = 'Hello'     # String in single quotes

# Creating Strings
full_greeting = "#{greeting}, #{name}!"  # String interpolation
length = name.length# Length of the string
upcase_name = name.upcase # Convert to uppercase
downcase_name = name.downcase #covts to lowercase
capt = downcase_name.capitalize #capitalizes first letter
puts downcase_name
puts capt

final_name = name.strip #removes white spaces
puts final_name

#Substring Methods and character access
puts name[0] #gets letter at 0th index
puts name [0..3] #gets letters from range

puts name.start_with?("Ali") #will return true, checks isf string starts with given snippet
puts name.end_with?("Man")

#String Interpolation
puts "Hello #{name.gsub("Alice", "Syed")}!" #gsub will replace all occurences while sub replaces first occurence
#split will divide sting into an array
String1 = "Syed Mohammad Jarif"
ar1 = String1.split(" ") #will split using commas
puts ar1[0]
puts ar1[1]
String2 = ar1.join(" ")#will join with spaces
puts String2
#join will combine an array of strings into a single string

#Comparison for strings:
puts (name == greeting) #bool returned
puts name!=greeting 
#compares lexicographically >,<,>=,<=