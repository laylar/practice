 input_file = ARGV.first
 
 #creates new function to print all in called file
 def print_all(f)
   puts f.read
 end
 
 #creates new function to "rewind", aka seek back to the beginning of the file
 def rewind(f)
   f.seek(0)
 end
 
 #creates new function to print a specific line. 
 #Current line starts as the first line because we've just set seek to 0.
 def print_a_line(line_count, f)
   puts "#{line_count}, #{f.gets.chop}"
 end
 
 #creates a variable named current_file with the open input_file data inside.
 current_file = open(input_file)
 
 puts "First let's print the whole file:\n"
 
 print_all(current_file)
 
 puts "Now let's rewind, kind of like a tape:"
 
 rewind(current_file)
 
 puts "Let's print three lines:"
 
 current_line = 1
 print_a_line(current_line, current_file)
 
 #rewrites current_line to next line
 current_line = current_line + 1
 print_a_line(current_line, current_file)
 
 #rewrites current_line to next line again
 current_line = current_line + 1
 print_a_line(current_line, current_file)