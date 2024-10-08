#hello
#asjibcjewncwiashdiqwwantasihiewctojenjiewckillnfewjbwfnmyselfjk

#Key methods:
#send -> this will call a method of an object by passing the method name as symbol or stiring
#public_send -> will only call public methods, gives error trying to invoke a private method

class Calculator
  def add(a, b)
    a + b
  end

  private

  def subtract(a, b)
    a - b
  end
end

calc = Calculator.new

# Dynamically call the 'add' method using send
result = calc.send(:add, 10, 5)
puts "Addition result: #{result}"  # Output: 15

# Dynamically call the private 'subtract' method using send
result = calc.send(:subtract, 10, 5)
puts "Subtraction result: #{result}"  # Output: 5


calc = Calculator.new

# Dynamically call the 'add' method using public_send
result = calc.public_send(:add, 10, 5)
puts "Addition result: #{result}"  # Output: 15

# Attempting to call a private method using public_send will raise an error
begin
  calc.public_send(:subtract, 10, 5)
rescue NoMethodError => e
  puts e.message  # Output: private method `subtract' called for #<Calculator:...>
end
