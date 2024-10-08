#honestly if youre reading this
#I do not know what I will do learning ruby
#at max I guess Illl just make a portfolio website lol
#I want to KMS
#fuck Javascript and fuck its community
#I cannot stand Javascript
#...
#now on with the series
#oh and btw I've finished learning Ruby in 63 hours (including 8 hours sleeps and meals and showers and other activities)
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
