#basic if_else:
print "Enter age: " 
age = gets.chomp.to_i
until age<120
  print 'Enter a valid age!: '
  age = gets.chomp.to_i
end

if age>=18 && age<120  
  puts "You are an adult"
elsif age <0
  puts "You do not exist"
elsif age>=0 && age<18
  puts "You are a minor"
end                      #this is required!!!


#ternary is same as c++ and Java syntax ?ifthendo : elsedo
#unless is the opposite of if
unless age<120
  puts 'Enter a valid age! '
end

#case statements are similar to switches without the disgusting syntax issues lol

day = "monday"
day = day.upcase

case day
when "Sunday", "Saturday" #comma acts as or operator
  puts "Enjoy the weekend!"
when "Monday"
  puts "Gotta get back on the grind!"
else
  puts "The Weekend gets closer everyday"
end

####################loops########################
#the while loop:
count = 0
while count <= 4
  puts"Count is #{count}"
  count+=1
end

#until loop is the opposite of while
count = 0
until count>4
  puts "The count is #{count}"
  count+=1
end
puts

#for loop

for i in 1..4
  puts"Iteration ##{i}"
end

#for each
arr = [1,2,3,4]
arr.each {|num| print"#{num} "}

#loop method
i=0
loop {
  puts i
  i+=1
  break if i>5
}

#times loop
i=0
10.times{
  |i| print "#{i+1} "
}

#############333 if there is a do statement, it can be replaced with a {}!!!
