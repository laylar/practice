people = 20
cats = 30
dogs = 15

# This works, if they are all placed together, but there must be an 'end' command for each if statement.
if people < cats
	puts "Too many cats! The world is doomed!"
if people > cats
	puts "Not many cats! The world is saved!"
end
end


if people < dogs
	puts "The world is drooled on!"
end

if people > dogs
	puts "The world is dry!"
end

dogs += 5

if people >= dogs
	puts "People are greater than or equal to dogs."
end

if people <= dogs
	puts "People are less than or equal to dogs."
end

if people == dogs
	puts "People are dogs."
end