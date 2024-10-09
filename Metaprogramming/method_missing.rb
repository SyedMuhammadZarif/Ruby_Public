class Person
  def initialize
    @attributes = {}
  end

  def method_missing(method_name, *args)
    if method_name.to_s =~ /=$/  # Checks for a setter
      attribute = method_name.to_s[0..-2]  # Remove the '=', up to the second last character
      @attributes[attribute.to_sym] = args.first
    else
      @attributes[method_name.to_sym]  # Retrieve the value
    end
  end
end

person = Person.new

person.name = "Alice"  # Calls method_missing to set the name
person.age = 30        # Calls method_missing to set the age

puts person.name  # Output: Alice
puts person.age   # Output: 30
