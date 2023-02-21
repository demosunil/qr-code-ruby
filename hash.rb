=begin
person1 = { "first_name" => "Raghu", "last_name" => "Betina", :role => 400 }

p person1.fetch("last_name")
p person1["last_name"]
 p person1.keys
p person1.values
p person1.fetch("first_name") 
p person1.key(400)


 p h = {1 => 100, "b" => 200, :c => 300, 4 => 400 }
p h.merge(:c => 50)

p h
p person1 = { "first_name" => "Raghu", "last_name" => "Betina", :role => 400 }
p h2 = h.merge(person1)
p h.merge!(person1)
 p h3 = h.to_h

 p h1 = h.to_a
 p h.keys       #=> ["a", "b", "c", "d"]
 p h.fetch(:c) # => 200
h.delete(1)
p h
 p h.has_key?("b")
p h.has_value?(400)
p h.key?("b")
p h.member?("b")
 p person1 == h
h.store(1,100)
p h
puts h.inspect
 p h.keys
 p h.values
p h.length
 p person1.invert
p person1
p person2 = person1.invert
p person2
 p person2.keys
p person2
# p person2.shift(2,"apple")
p person1.values_at("first_name", :role)


 p person1 = { "first_name" => "Raghu", "last_name" => "Betina", :role => 400 }

p person1.key("first_name")
p person1.key("Raghu")
 p person1.values_at("first_name")

 p dictionary = {
  :colors => ["red", "green", "blue"],
  :person => {
    :name => "Jenna Parker",
    :age => 32
  }
}
 p colors_array = dictionary.fetch(:colors)
 p colors_array.at(1)
p colors_array.insert(1,"pink")
p dictionary
 p person_hash = dictionary.fetch(:person)
 p person_hash.fetch(:age)
p person_hash.fetch(:name)
 p dictionary.fetch(:colors).push("yellow")
p dictionary
p dictionary.store(:first_name, "Raghu")
p dictionary
dictionary.store(5,[:apple,"banana",76])
p dictionary
 dictionary.fetch(:person).store(:role,"instructor")
p dictionary

contact_list = [
  {name: 'marcus', phone: 737},
  {name: 'james', phone: 737},
  {name: 'jake', phone: 745}
]

contact_list.each { |contact| puts contact[:name] }
# prints out 
# marcus
# james
# jake

contact_list.map { |contact| contact[:name] }
# => ["marcus", "james", "jake"]

contact_list.map { |contact| contact[:name] }.filter { |name| name[:m] }
# => ["marcus"]
end
integers = [1, 2, 3, 4, 5]

integers.length.times do |idx|
    puts integers[idx]
end

integers.each_with_index do |num, idx|
    puts "value #{num} has index #{idx}


#Given this list of people, print only names of people who are at least 16.
# 
# Yes, you could just look at it with your eyes and print their names, but imagine that you couldn't because there are a million items in the list.
# 
# Use the variable, loops, and conditionals instead.

list_of_people = [
  { :name => "James", :age => 16 },
  { :name => "Lee", :age => 12 },
  { :name => "Yolanda", :age => 26 },
  { :name => "Mel", :age => 15 },
  { :name => "Red", :age => 38 },
  { :name => "Fatimah", :age => 31 },
  { :name => "Carl", :age => 9 },
]

# p list_of_people.slice(0,1)
#p list_of_people.map{|name| name [:name]}
#p list_of_people.map{|age|  age  [:age]}.filter{|age| (&:>=16)}
#p list_of_people.map{|name| name [:name]}
# p list_of_people.map{|:name| name [:name]}.fliter{|:age| [:age >= 16]}
#p list_of_people.map{|:name| name [:name]}.fliter{|:age| (&:>=16)}

# Ask for a name, age, and occupation; store the values in a Hash; display the Hash.
# Make sure the value of the :age key is an Integer

#p "Enter a name, age, and occupation separated by spaces:"
#p list_of_people._array[:age]
#p list_of_people.fetch(:name)
 p a = Array.new
 p c = Array.new
 p b = list_of_people.length

p  a = list_of_people.map{|age| age  [:age]}
p  c = list_of_people.map{|name| name [:name]}
i = 0
while i <= b
  a[i]  >= 16
  p c[i]

  i= i + 1
end
hash_person.rb
Input:

Maude 24 Artist
Key output: { :name => "Maude", :age => 24, :occupation => "Artist" }

Complete input and output example:

"Enter a name, age, and occupation separated by spaces:"
Maude 24 Artist
{ :name => "Maude", :age => 24, :occupation => "Artist" }
end
 p "Enter a name, age, and occupation separated by spaces:"
 p nameocc =gets.chomp.split
nameocc[1]
   nam = nameocc[1].delete("^0-9")
  nameocc[1] = nam.to_i
  p nameocc
=begin
#hash1 = { a: [1, 2, 3], b: [4, 5, 6], c: [7, 8, 9] }
keys = hash1.keys
=> [:a, :b, :c]
values = hash1.values
=> [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

keys.zip(values.unshift([])).to_h
=> {:a=>[], :b=>[1, 2, 3], :c=>[4, 5, 6]}
Note that you don't need the intermediate variables, hash1.keys.zip(hash1.values.unshift([])).to_h

person1 = Hash.new
person1.store(:name, nameocc[0])
person1.store(:age, nameocc[1])
person1.store(:occupation, nameocc[2])
p person1
=end
#hash_find_value.rb
#Write a program that: Asks the user for an Integer, then checks to see if that integer is a value of any of the keys in sample_hash. If you find the number, print out "100 is under the key: a." If you don't find the number print out "Could not find the integer 100"

#Example:
=begin
"Enter an integer:"
4
"Could not find the integer 4"
p "Enter an Integer: "
int = gets.chomp.to_i
hash = { 5 => "a",10 => "b", 6 => "c" ,18 => "d", 24 => "e" }
# p hash = sample_hash.invert
 p keys = hash.keys
p values = hash.values
p  if hash.key?(int)
    p  hash.values_at(int)
p hash.fetch(int)
puts  "#{int} is under the key: #{hash.values_at(int)}"
puts  "#{int} is under the key: #{hash.fetch(int)}"


#else
#puts     "Could not find the integer #{int}"
 

#Write a program that: Asks the user for an Integer, then checks to see if that integer is a value of any of the keys in sample_hash. If you find the number, print out "100 is under the key: a." If you don't find the number print out "Could not find the integer 100"

#Example:
"Enter an integer:"
4
"Could not find the integer 4"
"Enter an integer:"
4
"Could not find the integer 4"

p "Enter an Integer: "
int = gets.chomp.to_i
hash = { "a" => 5, "b" => 10,  "c"=> 20 ,"d" => 25, "e" => 30 }
 p keys = hash.keys
p values = hash.values
 if   hash.value?(int)

 
  puts "#{int} is under the key: #{hash.key(int)}"
else
 puts "Could not find the integer #{int}"
end
   # p  hash.key_at(int)
#p hash.fetch(int)
#puts  "#{int} is under the key: #{hash.values_at(int)}"
#puts  "#{int} is under the key: #{hash.fetch(int)}"

p "Enter a name, age, and occupation separated by spaces:"
  nameocc =gets.chomp.split
nameocc.at(1)

=begin   
p nam = nameocc.at(1).delete("^0-9")
 p nameocc.at(1) = nam.to_i
  p nameocc
person1 = Hash.new
person1.store(:name, nameocc.at(0))
person1.store(:age, nameocc.at(1))
person1.store(:occupation, nameocc.at(2))
p person1
=end
p "Enter a name, age, and occupation separated by spaces:"
  nameocc =gets.chomp.split
 p nameocc.at(1)
puts "Enter a number."
variable = gets.chomp
variable = variable.to_i

if variable != Integer
 puts "Please enter a number."
elsif variable == Integer 
 puts "Thank you. Your number is #{variable}."
end

hash1 = { a: [1, 2, 3], b: [4, 5, 6], c: [7, 8, 9] }
keys = hash1.keys
=> [:a, :b, :c]
values = hash1.values
=> [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

keys.zip(values.unshift([])).to_h
=> {:a=>[], :b=>[1, 2, 3], :c=>[4, 5, 6]}
keys.zip(values.unshift([])).to_h
