class Person2
  
  def self.method_added(method_name)
    puts "New method added: #{method_name}"
  end
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


#aliasing
class Greeter
  def hello
    "Hello!"
  end

  # Alias the original hello method
  alias_method :old_hello, :hello

  def hello
    "#{old_hello} How are you today?"
  end
end

greeter = Greeter.new
puts greeter.hello  # Output: Hello! How are you today?
