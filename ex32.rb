the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages
for number in the_count
	puts "This is count #{number}"
end

# this is one way to Ruby-ize it
the_count.each do |the_count|
	puts "This is count #{the_count}"
end

# this is another way to Ruby-ize it
the_count.each {|the_count| puts "This is count #{the_count}"}

# same as above, but in a more Ruby style
# this and the next one are the preferred
# way Ruby for-loops are written
fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax (way to write it)
change.each {|i| puts "I got #{i}"}

# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(1..5).each do |i|
	puts "adding #{i} to the list."
	#pushes the i variable on the *end* of the list 
	elements.push(i)
end

# now we can print them out too
# *** x works as well as i as a temporary place holder in for-loops.
# though, I suspect that it would be poor form to use it that way
elements.each {|x| puts "Element was #{x}"}

# I'm creating my own to demonstrate << pushing
pushed = []

(1..4).each do |i|
	puts "adding #{i} to the list."
	pushed << i
end

#converting pushed to a string, to present all on one line like this: [1, 2, 3, 4]
puts pushed.to_s

a2d = [[1,2,3],[4,5,6]]
puts a2d
print a2d

#yet another creation of my own
puts "\n\nI'm creating 'smooshed' now."
smooshed = []
(1..5).each {|i| smooshed << i}
puts "Here is smooshed #{smooshed}"

#.reject displays only the items within the array in which the given qualification is not true.
puts smooshed.reject {|smooshed| smooshed == 4}
