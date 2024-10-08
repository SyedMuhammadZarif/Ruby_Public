#Dynamically create methods in runtime
#intercept method calls and change their behaviour
#access and modify the internal structures of objects

#its flexible, reduces boilerplate and is useful for Rails

#RAILS EXAMPLE
class User < ApplicationRecord
end
=begin
ActiveRecord Accessors: In Rails, you don’t need to define getter or setter methods for database columns. Rails automatically generates these using meta-programming based on the table schema.
=end

class User < ApplicationRecord
end

# This class magically gets getter and setter methods for columns:
# User#name, User#email, User#password, etc.

#validationL
class User < ApplicationRecord
  validates :email, presence: true  # Dynamically adds validation logic for email
end

#Callbacks
class User < ApplicationRecord
  before_save :capitalize_name  # Dynamically adds a callback for saving
end


#RUBY EXAMPLE
# Meta-programming to define methods dynamically
class DynamicMethods
  def self.create_method(name)
    define_method(name) {
      puts "#{name} method is dynamically defined! You may now add functionality to it"}
  end
end

# Create a new class that includes DynamicMethods
class MyClass
  extend DynamicMethods  # Add the ability to create dynamic methods
  # Dynamically define a method
  create_method(:hello)
end

# Call the dynamically created method
obj = MyClass.new
obj.hello  # Output: "hello method is dynamically defined!"
