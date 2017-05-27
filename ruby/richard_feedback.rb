#Overall, good job; I think with some minor refactors this could be taken 1 notch higher.

#Be sure to have more frequent descriptive commits as to the work being done.

#Cool!
class String
    def is_i?
       /\A[-+]?\d+\z/ === self
    end
end

#Spaces between argument variables is more conventional, same with between the operator
def calculate(nbr1,param,nbr2)
	if param == "+"
    #We can get away using p as it displays somethign to the screen and returns that same object; if we used puts our method wouldn't work.
    #The thing is we can just ommit p entirely, just because we don't see the method outputting to the screen doesn't mean it is not working
		nbr1+nbr2 #=> nil
	elsif param == "-"
		nbr1-nbr2
	elsif param == "*"
		nbr1*nbr2
	elsif param == "/"
		nbr1.to_f/nbr2.to_f
	end
end

p calculate(4, '+', 5) == 9
p calculate(4, '-', 5) == -1
p calculate(4, '*', 5) == 20
p calculate(20, '/', 5) == 4
# p calculate(10, '*', 10)

def valid_operator?(operator)
  valid_operators = ['+', '-', '/', '*']
  valid_operators.include?(operator)
end


user_input = ""
#Understand we are keeping track of how many calculations were performed, though how could we leverage our calculations for this same number?
#What if instead of using an array you used a hash with keys being the user_input and the values being their respective answer?

#How would you add key/value pairs?

#How would you iterate through the hash?
#Be careful wiht variable naming as `calculations` is hard to understand as a new reader.
calculations = {}

until user_input == "done"
	puts "Please type a calculation: "
	user_input = gets.chomp
  break if user_input == 'done'

  calculation_inputs = user_input.split(' ')

	if calculation_inputs[0].is_i? && valid_operator?(calculation_inputs[1]) && calculation_inputs[2].is_i?
    calculations << "#{user_input} = #{calculate(calculation_inputs[0].to_i, calculation_inputs[1], calculation_inputs[2].to_i)}"
	else
    puts "invalid syntax please try again"
	end
end

puts "#{calculations.size} calculations performed:"
calculations.each do |eq|
	puts eq
end