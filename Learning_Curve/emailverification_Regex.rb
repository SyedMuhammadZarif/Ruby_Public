email = "test@example.com"
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

if email =~ email_regex
  puts "Valid email format."  # Output: Valid email format.
else
  puts "Invalid email format."
end
