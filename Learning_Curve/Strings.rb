name = "Alice"         # String in double quotes
greeting = 'Hello'     # String in single quotes

# String methods
full_greeting = "#{greeting}, #{name}!"  # String interpolation
length = name.length# Length of the string
upcase_name = name.upcase # Convert to uppercase
downcase_name = name.downcase #covts to lowercase
capt = downcase_name.capitalize #capitalizes first letter
puts downcase_name
puts capt

final_name = name.strip #removes white spaces
puts final_name
