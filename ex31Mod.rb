puts "You enter a dark room with five doors. Do you go through door #1, door #2, or door #3?"

print ">"
door = $stdin.gets.chomp

if door == "1"
	puts "There's a giant bear eating a cheesecake. What do you do?"
	puts "1. Take the cake."
	puts "2. Scream at the bear."
	
	print ">"
	bear = $stdin.gets.chomp
	
	if bear == "1"
		puts "The bear eats your face off. Good job!"
	elsif bear == "2"
		puts "The bear eats your legs off. Good job!"
	else 
		puts "Well, doing %s is probably better. Bear runs away." % bear
	end
	
elsif door == "2"
	puts "You stare into the endless abyss at Cthulu's retina."
	puts "1. Blueberries."
	puts "2. Yellow jacket clothespins."
	puts "3. Understanding revolvers yelling melodies."
	
	print ">"
	insanity = $stdin.gets.chomp
	
	if insanity == "1" || insanity == "2"
		puts "Your body survives powered by a mind of jello. Good job!"
	else
		puts "The insanity rots your eyes into a pool of muck. Good job!"
	end
	
elsif door == "3"
	puts "It so happens that you've found the exit. You stand on the front porch."
	puts "1. Go down the steps."
	puts "2. Go back in."
	puts "3. Look around on the porch."
 
	print ">"
	porch = $stdin.gets.chomp
 
	if porch == "1"
		puts "You are now in the front yard. There's a mailbox at the front gate."
		puts "1. Open the mailbox."
		puts "2. Walk past the mailbox and leave."
		puts "3. Go back in."
		
		print ">"
		yard = $stdin.gets.chomp
		
		if yard == "1"
			puts "There's nothing in the mailbox. This isn't Zork! Goodbye."
			
		elsif yard == "2"
			puts "Goodbye."

# Trying to seek back to the beginning of the program.			
		elsif yard == "3"
			seek(1)
			
		else
			puts "You think you're being funny, huh?"
		end
	
# Trying to seek back to the beginning of the program.		
	elsif porch == "2"
		seek(1)
		
	elsif porch == "3"
		puts "You see a rocking chair, a raccoon, and a book."
		puts "1. Sit in the rocking chair."
		puts "2. Try to pet the raccoon."
		puts "3. Open the book to a random page and read a random sentence."
		
		print ">"
		pick = $stdin.gets.chomp
	else
		puts "You should have left when you could have. You mysteriously stumble while the bear in room 1 bumbles out the door and gnaws your legs off. Goodbye!"
	end
	
		if pick == "1"
			puts "The rocking chair is quite comfy. You fall asleep and wake up in your own bed. Goodnight."
		
		elsif pick == "2"
			puts "The raccoon is stuffed (with the catfood from the porch, silly!) so it's not hungry. It doesn't bite you, but it is very leery. It waddles away quickly."
			puts "1. Follow the raccoon."
			puts "2. Walk away."
			
			print ">"
			raccoon = $stdin.gets.chomp

			
			if raccoon == "1"
				puts "The raccoon is suddenly faster than you and gets away."
				seek(38)

				
			elsif raccoon == "2"
				puts "Good idea. It was probably carrying something, and it probably wanted your wallet. It's a good time to call it a night, anyway."
			
			else
				puts "The raccoon turns and laughs and you. Goodbye."
			
			end	

# Trying to pick and print a random line from file artificial_light.txt			
		elsif pick == "3"
			text = open("artificial_light.txt", "r")
			def pick_random_line(text)
				result = File.readlines(text).sample
				print result
			end
			pick_random_line(txt)
			
		else
			puts "Nothing appeals to you, huh? Well, I guess you wander down the steps and leave. Goodbye."
		end			

else
	puts "You stumble around and fall on a knife and die. Good job!"
	end