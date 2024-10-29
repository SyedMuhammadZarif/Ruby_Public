
#Reflection System

#Object_Introspection
#inspecting an object's class and its type using instance_of? and is_a?

class Animal
  def speak
    puts "Roar"
  end
end

class Dog < Animal
  def speak
    puts"Woof"
  end
end

dog = Dog.new
#checking and shit

puts "Class of dog: #{dog.class}"
puts "dog is an instance of Dog? : #{dog.instance_of?(Dog)}"
puts "is dog an Animal?:#{dog.is_a?(Animal)}"
puts "is dog an object? #{dog.is_a?(Object)}" #Object is built in
