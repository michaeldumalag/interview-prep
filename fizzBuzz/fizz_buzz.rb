# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print "Fizz" instead of the number
# and for the multiples of five print "Buzz".
# For numbers which are multiples of both three and five print "FizzBuzz

def fizz_buzz
  (1..100). each do |number|
    if (number % 15).zero?
      puts 'FizzBuzz'
    elsif (number % 3).zero?
      puts 'Fizz'
    elsif (number % 5).zero?
      puts 'Buzz'
    end
  end
end

fizz_buzz
