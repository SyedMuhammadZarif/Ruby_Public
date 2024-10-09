class Person2
  
  def method_missing(method_name, *args)
    puts "Undefined method: #{method_name}"
      puts "Do you want to create this field: Y/N"
      query_field = gets.chomp.upcase.to_s
      if query_field == "Y" 
        puts "Enter value to insert"
        query_field = gets.chomp
        instance_variable_set("@#{method_name}", query_field)
         
        # Dynamically define the setter method for this instance only
          define_singleton_method("#{method_name}=") do |val|
           instance_variable_set("@#{method_name}", val)
       end

        # Dynamically define the getter method for this instance only
        define_singleton_method(method_name) do
          print "#{method_name} is #{instance_variable_get("@#{method_name}")}\n"
        end
      
      
      else
        puts "Method Discarded"
      end
  end
end



################################################runner#######################################
person2 = Person2.new
#dynamically add methods in runtime
person2.name
person2.age
person2.location

#get the dynamic methods
person2.name
person2.age
person2.location



