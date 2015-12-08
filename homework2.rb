def fizzbuzz(num) # This method should return either "Fizzbuzz", "Fizz", "Buzz", or the original number
  case # A case statement works similarly to an if statament and will run the first "when" that evalutes to true
  when num % 15 == 0 then "FizzBuzz" # If the variable num divided by 15 produces no remainder, then "Fizzbuzz" is returned
  when num % 3  == 0 then "Fizz"# If the variable num divided by 3 produces no remainder, then "Fizz" is returned
  when num % 5  == 0 then "Buzz"# If the variable num divided by 5 produces no remainder, then "Buzz" is returned
  else num # If none of the above return true, num remains the same value
  end
end

def fizz_buzz_to(limit) # Depending upon the limit parameter chosen, this method should print "Fizzbuzz", "Fizz", "Buzz", and/or the number in order from 1 to the chosen limit
  1.upto(limit).each do |num| # Tells Ruby to run the fizzbuzz method for every number from 1 to the chosen limit
    puts fizzbuzz(num) # And then print the result of the fizzbuzz method on the console
  end
end


class Homework
	def shout(words) # takes a string as the parameter, returns string in caps
    words.upcase
	end

	def repeat_string(phrase, num) # takes a string and integer as parameters, prints the string the given number of times
    puts phrase * num
	end

	def calendar(holidays, dates) # takes two arrays, first composed of holidays as strings, second as dates as strings. Returns a hash with holiday name keys and values of the correct dates from second array
    holidays.zip(dates).to_h
	end
end

# call each method
assignment = Homework.new
puts assignment.shout("hello there")

task = Homework.new
puts task.repeat_string("How did this get made? ", 4)

work = Homework.new
holidays = ["Xmas", "New Year's Day", "Valentine's Day"]
dates = ["December 25", "January 1", "February 14"]
puts work.calendar(holidays, dates)


# Question 1 - Instance variables have a name beginning with @, which designates it an instant variable rather than a local variable. A local variable is only available inside the method where it is defined and cannot be called outside that method. An instance variable does not have that restriction; it is bound to the specific instance of the class and can, thus, is available to any method in that class. 

# Question 2 - Integer class .next method - An integer followed by .next returns the result of that integer + 1; so 5.next returns 6 or -8.next returns -7