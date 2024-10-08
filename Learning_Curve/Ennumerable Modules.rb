# Enumerable Module Demonstration

# Example 1: each
puts "Example 1: each"
[1, 2, 3].each do |num|
  puts num * 2  # Output: doubles each number
end
puts # New line for better readability

# Example 2: map
puts "Example 2: map"
squared = [1, 2, 3].map { |num| num ** 2 }  # Squares each number
puts squared.inspect  # Output: [1, 4, 9]
puts # New line for better readability

# Example 3: select
puts "Example 3: select"
even_numbers = [1, 2, 3, 4, 5, 6].select { |num| num.even? }  # Selects even numbers
puts even_numbers.inspect  # Output: [2, 4, 6]
puts # New line for better readability

# Example 4: reject
puts "Example 4: reject"
odd_numbers = [1, 2, 3, 4, 5, 6].reject { |num| num.even? }  # Rejects even numbers
puts odd_numbers.inspect  # Output: [1, 3, 5]
puts # New line for better readability

# Example 5: find
puts "Example 5: find"
first_even = [1, 3, 5, 6, 8].find { |num| num.even? }  # Finds the first even number
puts first_even  # Output: 6
puts # New line for better readability

# Example 6: count
puts "Example 6: count"
count = [1, 2, 3, 4].count  # Counts the total number of elements
puts count  # Output: 4
puts # New line for better readability

# Example 7: reduce (inject)
puts "Example 7: reduce (inject)"
sum = [1, 2, 3, 4].reduce(0) { |accumulator, num| accumulator + num }  # Sums the elements
puts sum  # Output: 10
puts # New line for better readability

# Example 8: all?
puts "Example 8: all?"
all_even = [2, 4, 6].all? { |num| num.even? }  # Checks if all numbers are even
puts all_even  # Output: true
puts # New line for better readability

# Example 9: any?
puts "Example 9: any?"
any_odd = [2, 4, 6, 7].any? { |num| num.odd? }  # Checks if any number is odd
puts any_odd  # Output: true
puts # New line for better readability

# Example 10: none?
puts "Example 10: none?"
none_even = [1, 3, 5].none? { |num| num.even? }  # Checks if no numbers are even
puts none_even  # Output: true
puts # New line for better readability

# Example 11: Custom Class using Enumerable
class CustomCollection
  include Enumerable  # Include the Enumerable module
  
  def initialize(elements)
    @elements = elements
  end

  # Define the each method to iterate over the collection
  def each(&block)
    @elements.each(&block)
  end
end

puts "Example 11: Custom Class using Enumerable"
collection = CustomCollection.new([1, 2, 3, 4])
puts collection.map { |num| num * 2 }.inspect  # Output: [2, 4, 6, 8]
