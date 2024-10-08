#hash creation, it is like dictionary

person1 = {
  Name: nill,
  Age: 23,
  Grade: 3.12,
  Hobby: "learning new programming languAges"

}
#accessing hash = hashName[:key]
print ("The subject's Name is #{person1[:Name]}.
He is #{person1[:Age]} years old with a GPA of #{person1[:Grade]}.
He has a Hobby of #{person1[:Hobby]} 
")

#adding a new key
person1[:Email] = "syed.tahmid15@gmail.com"
puts "\n\nnew key added: \n#{person1.inspect}\n\n\n"

#deletion
person1.delete(:Age)
puts "\nAge key deleted: "
puts person1.inspect

#iteration
puts "\n\nInfo Available: "
person1.each { |k,v| puts "#{k}: #{v}"}
#quick view of keys and values
puts person1.keys.inspect
puts person1.values.inspect

