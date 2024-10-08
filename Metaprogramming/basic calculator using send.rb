class Calculator
  def +(a, b)
    a + b
  end

  def -(a, b)
    a - b
  end
end

calc = Calculator.new

puts "Enter the operation (add/subtract):"
operation = gets.chomp  # User inputs the operation
puts "Enter first number:"
a = gets.to_i          # User inputs the first number
puts "Enter second number:"
b = gets.to_i          # User inputs the second number

result = calc.send(operation, a, b)  # Calls the method based on user input
puts "The result is: #{result}"
