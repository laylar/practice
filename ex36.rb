def entry
	puts "You're in the main entryway of a house."
	puts "You see a bedroom, a bathroom, and an open kitchen/living room space."
	puts "Which would you like to enter?"
	puts "bedroom, bathroom or kitchen/living room?"
	print ">"
	choice = $stdin.gets.chomp
	
	if choice.include? "bedroom"
		bedroom
	elsif choice == "bathroom"
		bathroom
	elsif choice.include? "kitchen"
		kitchen_livingroom
	elsif choice.include? "living room"
		kitchen_livingroom
	elsif choice == "quit"
		dead("I guess you're done.")
	else
		puts "Try again."
		entry
	end
end

def bedroom
	puts "You're in the bedroom."
	puts "You may sleep, snoop, or look out the window."
	puts ">"
	choice = $stdin.gets.chomp
	
	if choice == "sleep"
		puts "You lay your head down on a stranger's bed and close your eyes."
		puts "Unbeknownst to you, this is the home of a bear."
		puts "The bear returns home while you are sleeping and is startled to find you."
		puts "Your eyes open."
		bear
	elsif choice == "snoop"
		puts "You take a peek around and notice some pictures of bears on the wall."
		puts "There are no drawers, there is no closet... only a bed, a chair, a window with a curtain, and a lamp"
		bedroom
	elsif choice == "look out the window"
		puts "You walk to the window and take a peek out.\nThere isn't much to see, mostly the green grass in front of the house...\nPress ENTER to contine..."
		gets
		puts "But wait..."
		puts "There's something in the distance."
		puts "It's... its a bear...\nPress ENTER to continue..."
		gets
		puts "No... it's three bears."
		puts "You stand, stunned, indecisive, until it's too late.\nPress ENTER to continue..."
		gets
		bear
	elsif choice == "quit"
		dead("I guess you're done.")
	else
		choice
	end
end

def bear
	puts "Your eyes lock with a bear's."
	puts "You could run, stay still, or talk to the bear."
	puts "What will you do?"
	stay_still = false
	
	while true
		print ">"
		choice = $stdin.gets.chomp
	
		if choice == "run"
			puts "The bear decides that you are dinner."
			dead("You have been eaten.")
		elsif choice == "stay still" && !stay_still
			puts "The bear tilts its head and seems to squint a little.\nYour bladder gives way and you feel the pee leaking down your legs... Erps.\nWhat now?"
			stay_still = true
		elsif choice == "stay still" && stay_still
			puts "The bear is confused by you and wanders off.\nGuess you played dead nicely."
			bedroom	
		elsif choice.include? "talk"
			puts "You stammer something incoherent.\nThe bear assumes you're not local and decides not to eat you."
			bedroom
		elsif choice == "quit"
			dead("I guess you're done.")	
		else
			"The bear is confused."
			bear
		end
	end
end
	
def kitchen_livingroom
	puts "You're in the kitchen/livingroom area.\nYou may cook, wash dishes, look out the window, or take a look around."
	print ">"
	choice = $stdin.gets.chomp
	
	if choice.include? "cook"
		puts "You cook a nice meal and sit down to enjoy it..."
		gets
		puts "You eat it all up, it was just right.\nWeirdo, you're in a stranger's home."
		kitchen_livingroom
	elsif choice.include? "wash dishes"
		puts "How thoughtful! You wash up a stranger's dishes. Now the kitchen looks cleaner."
		gets
		kitchen_livingroom
	elsif choice.include? "window"
		big_view
	elsif choice.include? "around"
		puts "You see a kitchen sink, a stove, three chairs of varying comfort, and some stairs."
		print ">"
		choice = $stdin.gets.chomp
		
		if choice.include? "stairs"
			up_stairs_to_attic
		elsif choice.include? "chair"
			puts "You sit in a chair... it's not that comfortable. You sit in another, it's too comfortable."
			puts "You get out of that chair before it's too late. You sit in the third chair and it's just right."
			puts "You realize that you are Goldilocks."
			gets
			kitchen_livingroom
		elsif choice == "quit"
			dead("I guess you're done.")
		else
			kitchen_livingroom
		end
	elsif choice == "quit"
		dead("I guess you're done.")	
	else
		puts "I'm not sure what you mean."
		kitchen_livingroom
	end
end

#Do these.
	
def bathroom
	puts "You're in the bathroom. You may use the toilet, wash your hands, or snoop in the medicine cabinet. "
	print ">"
	choice = $stdin.gets.chomp

	if choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == "quit"
		dead("I guess you're done.")
	else
		#do something
	end	
end

def big_view
	puts ""
	print ">"
	choice = $stdin.gets.chomp

	if choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == "quit"
		dead("I guess you're done.")
	else
		#do something
	end		
end

def up_stairs_to_attic
	puts ""
	print ">"
	choice = $stdin.gets.chomp

	if choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == "quit"
		dead("I guess you're done.")
	else
		#do something
	end		
end

def attic
	puts ""
	print ">"
	choice = $stdin.gets.chomp

	if choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == ""
		#do something
	elsif choice == "quit"
		dead("I guess you're done.")
	else
		#do something
	end		
end

def dead(reason)
	puts reason, "Goodbye."
	exit(0)
end

puts "\n\n\nWelcome.\nYou may type 'quit' to leave at any time.\n\n"	
entry
