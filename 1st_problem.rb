# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# result = (1...1000).select{|e| e % 3 == 0 || e % 5 == 0 }.inject(0){|result, element| result + element} => first iteration: result = 0, element = 1
# result = (1...1000).select{|e| e % 3 == 0 || e % 5 == 0 }.inject{|result, element| result + element} => first iteration: result = 1, element = 2
result = (1...1000).select{|e| e % 3 == 0 || e % 5 == 0 }.inject(&:+)
print result
