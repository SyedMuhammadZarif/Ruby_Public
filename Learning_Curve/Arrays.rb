#creating arrays 
newarr = ["QWERTY", 2, 45, "POIU", 45.5] #can have multiple data types
puts newarr

#length
puts newarr.length

#Accessing Elements
puts newarr.first
puts newarr.last
puts newarr[2]
puts newarr[3][2] #breakdown of in array element
print newarr[0..(newarr.length)]
puts

# Adding and Removing Elements
newarr.push("Newelem") #Adds new element to the end
print newarr
newarr.pop
puts
print newarr
puts
#iteration
fruits = ["apple", "banana", "cherry"]
fruits.each {|fruit| print "#{fruit} "}
