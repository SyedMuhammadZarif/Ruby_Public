#Regular expressions creation
#enclose pattern in forward slashes

regex = /pattern/

requregex = /Ruby/

if "I love Ruby!" =~ requregex
  puts"Pattern match found!"
else
  puts"Pattern not found!"
end
#THE .match function returns a bool

#to match a start idx then any single character in the middle and then end idx
#do the following (doesnt work with spaces)

text = "cardiac arrest"
text=~/c.t/? puts("Pattern matched!"): puts('pattern not found!')
text2 = "cardiac arrest on a cat"
text2=~/c.t/? puts("Pattern matched!"): puts('pattern not found!')

#to match the start of a string we use the anchor symbol

startmatcher = "Syed Muhammad Zarif"
((startmatcher=~/^sy/)||(startmatcher=~/^Sy/))? puts("ya"): puts("nah")

#to match the end similarly we use $ sign

# Example: Using '*' to match zero or more occurrences of the previous character between the characters
text = "boooooks"
if text =~ /b*k/
  puts "Pattern matched!"  # Output: Pattern matched!
end

# Example: Using '+' to match one or more occurrences of the previous character between the characters
text = "boooook"
if text =~ /bo+k/
  puts "Pattern matched!"  # Output: Pattern matched!
end

# Example: Using '\d' to match any digit
text = "My number is 12345"
if text =~ /\d+/
  puts "Pattern matched!"  # Output: Pattern matched!
end

# Example: Using '\w' to match any word character
text = "variable_name"
if text =~ /\w+/
  puts "Pattern matched!"  # Output: Pattern matched!
end

# Example: Using '\s' to match whitespace
text = "Hello World"
if text =~ /Hello\sWorld/
  puts "Pattern matched!"  # Output: Pattern matched!
end


# Match a string that starts with a word, followed by a space, followed by digits, and ending with a period
text = "Order 12345."
if text =~ /^\w+\s\d+.$/ #always have to escape the special characters with \
  puts "Pattern matched!"  # Output: Pattern matched!
end

#capturing groups with parantheses
result = "2023-10-08".match(/(\d{4})-(\d{2})-(\d{2})/)
if result
  puts "Year: #{result[1]}, Month: #{result[2]}, Day: #{result[3]}"
end

#The gsub method is used to find and replace text that matches a pattern.
text = "I love Ruby!"
new_text = text.gsub(/Ruby/, "Python")
puts new_text  # Output: I love Ruby on rails!


text = "My birthday is 2023-10-08."
new_text = text.gsub(/(\d{4})-(\d{2})-(\d{2})/, '\2/\3/\1')
puts new_text  # Output: My birthday is 10/08/2023.

#case insensitivity
startmatcher = "Syed Muhammad Zarif"
startmatcher =~ /sY/i ? puts("ya"): puts("nah")

#MultilineMode /m allows \n to be identified as well


#ignoring whitespaces and comments:
regex = /
  \d{3}  # Area code
  \-     # Dash
  \d{3}  # First three digits
  \-     # Dash
  \d{4}  # Last four digits
/x  # The 'x' modifier ignores whitespace and comments

if "123-456-7890" =~ regex
  puts "Phone number matched!"  # Output: Phone number matched!
end

#scan method returns an array of matching scans
text = "The numbers are 42, 56, and 78."
numbers = text.scan(/\d+/)  # \d+ matches one or more digits
puts numbers.inspect  # Output: ["42", "56", "78"]

