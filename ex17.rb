from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

#causes the in_file to read as if it were opening from the from_file
#semi-colon allows two actions on "one line"
in_file = open(from_file); indata = in_file.read

puts "The input file is #{indata.length} bytes long"

#query: file, do you exist?
puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

#again, semi-colon allowed two lines of code on one.
out_file = open(to_file, 'w'); out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close