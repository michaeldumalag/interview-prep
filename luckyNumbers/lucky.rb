# add method to class Fixnum to find number of digits
class Fixnum
  def num_digits
    Math.log10(self).to_i + 1
  end
end

# Method will return all the number by digits and place
# into an array
# input: given integer i.e 1234
# output: an array of all digits i.e [1,2,3,4]
def split_digits(number)
  number.to_s.split(//).map(&:to_i)
end

# Method will add the digits of a given number
# i.e. 1234 = 1+2+3+4 = 10
def add_digits(number)
  nums_to_add = split_digits(number)
  nums_to_add.reduce(0, :+)
end

# This method will recursively add digits until 1 digit
def successive_addition(number)
  return number if number.num_digits == 1
  result_num = add_digits(number)

  return result_num if result_num.num_digits == 1
  successive_addition(result_num)
end

def lucky_numbers
  lowest_number = ARGV[0].to_i
  highest_number = ARGV[1].to_i
  lucky_num_range = (lowest_number..highest_number)

  lucky_num_range.each do |number|
    potential_lucky_num = successive_addition(number)
    puts number if potential_lucky_num == 7
  end
end

lucky_numbers
