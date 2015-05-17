days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

puts "Here are the days:#{days}"
puts "Here are the months: #{months}"

=begin
three double-quotes seems to allow the formatting to remain the same as presented.
A new line in code presents as a new line in the shell.
=end
puts """
There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
"""