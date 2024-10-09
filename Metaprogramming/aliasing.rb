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