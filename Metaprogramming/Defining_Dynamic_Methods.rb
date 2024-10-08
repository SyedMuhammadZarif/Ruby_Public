#for this we use the define_method tool
#it comes in the module class
#the names are generated dynamically

=begin

define_method(:method_name)  {|arguments|
  #method body goes here
}

=end

#parameters:
#:method_name: it is a symbol representing the name of the method to be defined

#example usage
class DynamicGreet
  #Dynamically define greeting methods
  [:hello, :goodbye, :welcome].each {|greeting|
    define_method(greeting) {|name|
      puts "#{greeting.capitalize}, #{name}!"
  }
}
end

greeter = DynamicGreet.new #new instance of the class
greeter.hello("Alice") #hello is the greeting method, which takes in the name parameter
greeter.welcome("Asif")
greeter.goodbye("Alice")

#uses for define_method:
#instead of many getter and setter, they are dynamically createrd
#for DSL: you can define commands or methods based on user input or config
#reduces boiler plate code

#Example 2:
#Advanced Example: Dynamic Attribute Accessors
#here instead of a getter and setter for each of the attributes, we dynamically get and set them with small code

class Person
  details = [:name, :age , :location  ] #this is an array of keywords
  details.each do |detail| #get the attribute currently selected in the each loop
    #define the getter method for it
    define_method(detail) do
      puts instance_variable_get("@#{detail}") #this is a ruby built in for getting instance variables
    end
   
    define_method("#{detail}=") do |value|
      instance_variable_set("@#{detail}", value)
    end
  end


end

person = Person.new
person.name = "Syed"

person.location = "Bangladesh"
person.location
person.name
person.age


class Person2
  
  def method_missing(method_name, *args)
      puts "Undefined method: #{method_name}"
      puts "Do you want to create this field: Y/N"
      query_field = gets.chomp.upcase.to_s
      if query_field == "Y" 
        puts "Enter value to insert"
        query_field = gets.chomp
        instance_variable_set("@#{method_name}", query_field)  # Initialize it to nil or any default value
        # Dynamically define the getter method for this instance only
        define_singleton_method(method_name) do
          puts "#{method_name} is #{instance_variable_get("@#{method_name}")}"
        end

        # Dynamically define the setter method for this instance only
        define_singleton_method("#{method_name}=") do |val|
          instance_variable_set("@#{method_name}", val)
        end
      else
        puts "ok"
      end
  end
end






person2 = Person2.new
person2.name
person2.age
person2.location

person2.name
person2.age
person2.location