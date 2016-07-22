list_of_numbers = [14, 90, 13, 88, 43, 71]

def find_max_value(array_of_numbers)
	max_value = array_of_numbers[0]
	for i in 0...array_of_numbers.length do
		max_value = array_of_numbers[i] if max_value < array_of_numbers[i]
	end
	max_value
end

puts "the list of numbers are: #{list_of_numbers}"
puts "The max value of above: #{find_max_value(list_of_numbers)}"
