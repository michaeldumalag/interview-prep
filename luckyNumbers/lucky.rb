# Assumptions:
# - arg1 < arg2
# - only two ARGV arguments

# add method to class Fixnum to find number of digits
class Fixnum
  def num_digits
    Math.log10(self).to_i + 1
  end
end

def split_digits(number)
  number.to_s.split(//).map(&:to_i)
end

def add_digits(number)
  split_digits(number).reduce(0, :+)
end

def lucky_number?(number)
  return true if number == 7
end

def successive_addition(number)
  return number if number.num_digits == 1
  successive_addition(add_digits(number))
end

def lucky_numbers
  (ARGV[0].to_i..ARGV[1].to_i).each do |number|
    puts number if lucky_number?(successive_addition(number))
  end
end

lucky_numbers
