module Multiplication
  def multiply(a, b)
    puts a * b
  end
end

module Addition
  def add(a, b)
    puts a + b
  end
end

class Calculator
  extend Multiplication  # Use extend to add module methods as class methods
  include Addition#this is for instance
  extend Addition#this is for direct class call
end

calc = Calculator.new

calc.add(2,3)


Calculator.multiply(4, 5)  # Output: 20
Calculator.add(2,3)

