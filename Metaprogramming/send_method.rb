#the send method
#it allows to invoke methods dynamically by their names even if they are private or protected
#send is an instance method defined in the object class
#it takes method name (as symbol or string) and any number of arguments you want to pass to that method
#send can call public,private and protected methods

#object.send(:method_name, *arguments)

#basic examle of use of send:
class Greeter
  def hello(name)
    puts "Hello #{name}!"
  end
  private
  def secret_greet(name)
    puts "Sup #{name}!?"
  end
end

welcome = Greeter.new

welcome.hello("Alice")

welcome.send("secret_greet","Alice")
#can be sybmol too like :secret_greet
welcome.secret_greet("alice")