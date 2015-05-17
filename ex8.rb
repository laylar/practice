formatter = "%{first} %{second} %{third} %{fourth}"


# #{} is used to format strings, insert variables, etc, but %{} can format multiple values.

#"first", "second", "third", and "fourth" are place holders for whatever follows the colon
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}

#putting formatter inside of formatter 4 times repeats the original code for formatter, four times
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

#This reads as one line because formatter is formatted to print in one line. \n will make a new line.
puts formatter % {
	first: "I had this thing.",
	second: "That you could type up right.",
	third: "But it didn't sing.",
	fourth: "So I said goodnight."
}