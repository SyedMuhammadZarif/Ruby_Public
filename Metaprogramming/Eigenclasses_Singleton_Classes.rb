#singleton and eigens
#Singletons are meethods that are defined for a single object i.e instances not for the entire class
#Eiglen Classes are hidden classes where singletons methods are stored

class Person
end

alice = Person.new
bob = Person.new

# Define a singleton method for alice
def alice.greet
  "Hello, I'm Alice!"
end

puts alice.greet  # Output: Hello, I'm Alice!

# Bob cannot access the greet method, as it is not defined for him
begin
  puts bob.greet  # Raises NoMethodError
rescue NoMethodError => e
  puts e.message  # Output: undefined method `greet` for #<Person:...>
end


#accessing eigen class
class Person
end

person = Person.new

# Access the eigenclass and define a method
class << person
  def speak
    "I'm speaking!"
  end
end

puts person.speak  # Output: I'm speaking!
