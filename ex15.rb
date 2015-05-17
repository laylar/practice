filename = ARGV.first

#opening filename and saving the contents in the txt variable
txt = open(filename)

#reading the txt variable
puts "Here's your file #{filename}:"

#displaying contents of txt
puts txt.read
#closing txt file
txt.close

#receiving new filename with a gets.chomp and storing the filename in variable file_again
print "Type the filename again:"
file_again = $stdin.gets.chomp

#opening file_again and storing its data in variable txt_again
txt_again = open(file_again)

#displaying contents of txt_again
puts txt_again.read

#closing txt_again file
txt_again.close