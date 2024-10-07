#creating a file in local storage
File.open("text.txt", "w") {|file| file.puts("Hellow!")}
#reading from the file
File.open("text.txt", "r") {|file| file.each{|line| puts line}}
#appending to the file
File.open("text.txt", "a") {|file| file.puts("This is the new line")}
#read all at once
conten = File.read("text.txt")
puts conten

#read line by line
File.foreach("text.txt") {|line| puts line}
#read into an array
lines = File.readlines("text.txt")
print lines

#lists directory
Dir.entries(".").each {|entry| puts entry}
