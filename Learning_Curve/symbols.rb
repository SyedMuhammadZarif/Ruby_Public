#symbols are immutable and unique
#symbols are stored in memory once hence multiple referes will refer to the same pointer
#they are very memory efficient and have good performance
#they are used as hash keys and method names, reptesenting states and enum like usage
#avoid symbols in external input

#just write like string but add ':' in front

status = :active

puts status #will just print it

#using in hashes

user_info = {
  name: "Charlie",
  status: status
}
puts user_info
user_info.each {|k,v| puts "#{k}: #{v}"}
#comparison operator same as string
string1 = "Apple"
symbol1 = :Apple

puts string1==symbol1.to_s #this will give false