class Pizza2

  def initialize(dough: "soft", cheese: "no", toppings: "no")
    @dough = dough
    @cheese = cheese
    @toppings = toppings
    print "\nYou ordered a #{@dough} dough pizza"
    yield(self) if block_given? #self is yielded to allow it to be run from the outside
  end
  # Getter methods to access instance variables outside the class
  attr_reader :cheese, :toppings, :dough #this is a built-in ruby method same for both vars and keywords
  
end


def pizzachecker2(pizza)
  if pizza.cheese == "no" || pizza.cheese.nil?
    print " without cheese"
  else
    print " with #{pizza.cheese} cheese"
  end
  if pizza.toppings == "no" || pizza.toppings.nil?
    print " and no toppings"
  else
    print " along with #{pizza.toppings} toppings"
  end
end

#attr_writer: modify instance variables, reader reads and accessor for read write
myproc = Proc.new{|piza| pizzachecker2(piza)} #using procs 

newpizza = Pizza2.new(toppings: "Mushroom and Beef") {|piza| myproc.call(piza)} #proc must be passed inside a block 
#would say this is the best method, it is the most flexible, hence always use keyword args
