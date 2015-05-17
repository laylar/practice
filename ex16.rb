filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
#adding the w opens the file in write mode. Alternative modes are "r" for read, "a" for append.
#default mode for .open is "r"
target = open(filename, 'w')

#truncating seems to be unnecessary, as the write function rewrites all that was in the file.
#puts "Truncating the file. Goodbye!"
#target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1:"
line1 = $stdin.gets.chomp
print "line 2:"
line2 = $stdin.gets.chomp
print "line 3:"
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close