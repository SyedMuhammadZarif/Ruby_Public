#basic exception handling
begin
  print"Enter Divident: " 
  number = gets.chomp.to_f
  print "Enter Divisor: "
  number2 = gets.chomp.to_f
  #is_a(Datatype) means is an instance of the datatype 
  unless number.is_a?(Integer) || number.is_a?(Float) || number2.is_a?(Integer) || number2.is_a?(Float)
    raise ArgumentError 
    "How do you divide letters!" 
  end
  raise ZeroDivisionError, "Cannot divide by zero wtf!" if number2==0
  result = number/number2
  
  if result % 1 == 0  # Check if the result is an integer
    puts result.to_i  # Convert to integer for output
  else
    puts "The result is #{result.round(3)}!"  # Round to 3 decimal places if it's a float
  end
  file = File.open("non_existent_file.txt")
rescue ArgumentError
  puts "Fix you damn input"
rescue SyntaxError,NameError
  puts "fix yo damn code"
rescue ZeroDivisionError
  puts "Cannot divide by zero!"
rescue Errno::ENOENT  # Specific error for file not found
  puts "File not found!"
ensure#this makes sure this will always run regardless
  puts "This is the end of the code!"
end

class CustomError < StandardError; end

begin
  raise CustomError, "This is a custom error!"
rescue CustomError => e
  puts e.message  # Output: This is a custom error! this comes from the raise error message
end

  