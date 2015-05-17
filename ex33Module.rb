
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

=begin
#function to call


def while_increasing_numbers (var_not_6)
i = 0
numbers = []

	while i < var_not_6
		puts "At the top i is #{i}"
		numbers.push(i)
		
		i += 1
		puts "Numbers now: ", numbers
		puts "At the bottom i is #{i}"
	end
	
	puts "The numbers: "

	numbers.each do |numbers|
		puts "The numbers: "
	end
	
end

print "What number would you like to process, excluding the number 6?"
var_not_6 = $stdin.gets.chomp.to_i

while_loop_func (var_not_6)
=end