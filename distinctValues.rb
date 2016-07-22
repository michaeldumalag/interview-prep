string_of_numbers = "1 3 5 3 7 3 1 1 5"
# with no ruby magic
# def contains_element?(value, array)
# 	for i in 0...array.length do
# 		return true if value == array[i]
# 	end
# 	return false
# end

# def find_distinct_values(number_string)
# 	array_of_values = number_string.split(' ')
# 	result = []

# 	for i in 0...array_of_values.length do
# 		if !contains_element?(array_of_values[i], result)
# 			result << array_of_values[i]
# 		end
# 	end

# 	result.join(' ')
# end

# refactored in RUBY magic
def find_distinct_values(number_string)
	array_of_values = number_string.split(' ')
	result = []
	array_of_values.each do |value|
		result << value if !result.include?(value)
	end
	result.join(' ')
end

puts "Original string of values: '#{string_of_numbers}'"
puts "New String containing only distinct values '#{find_distinct_values(string_of_numbers)}'"
