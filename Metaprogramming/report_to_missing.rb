class Example
  def method_missing(method_name, *args)
    if method_name == :dynamic_method
      puts  "You called a dynamic method!"
    else
      super
    end

    rescue NoMethodError
        puts "sorry cannot help you with that"  # Calls the default method_missing behavior  
    
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name == :dynamic_method || super#if the method name matches certain criteria it is allowed to be dynamically created
  end
end

example = Example.new
example.dynamic_method
example.age