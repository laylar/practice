i = 0
numbers = []

=begin
while i < 6
	puts "At the top i is #{i}"
	numbers.push(i)
	
	
	i += 1
	puts "Numbers now: ", numbers
	puts "At the bottom i is #{i}"
end

puts "The numbers: "

#remember you can write this 2 other ways?
numbers.each{|num| puts num}
=end

#function to call
var_not_6 = 3

def while_loop_func (var_not_6)
	while i < var_not_6
		puts "At the top i is #{i}"
		numbers.push(i)
		
		i += 1
		puts "Numbers now: ", numbers
		puts "At the bottom var_not_6 is #{i}"
	end
end
	
puts "The numbers: "
numbers.each do |numbers|
	puts "The numbers: "
end