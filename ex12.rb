#.to_f makes the variable a floating number (which adds a .0 to the end)
print "Give me a number:"
number = gets.chomp.to_f

bigger = number * 100
puts "A bigger number is #{bigger}"

#.to_i makes the variable an integer
print "Give me another number:"
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}"