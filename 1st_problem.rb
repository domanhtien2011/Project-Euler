# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# result = (1...1000).select{|e| e % 3 == 0 || e % 5 == 0 }.inject(0){|result, element| result + element} => first iteration: result = 0, element = 1
# result = (1...1000).select{|e| e % 3 == 0 || e % 5 == 0 }.inject{|result, element| result + element} => first iteration: result = 1, element = 2
result = (1...1000).select { |e| e % 3 == 0 || e % 5 == 0 }.inject(&:+)
print "#{result }\n"

# Better way to solve it if the input is 1000000000
def sum_divisible_by(number)
  # 999 since that is the biggest number that is smaller than 1000
  # 3 + 6 + 9 + 12 + ..... + 999 = 3 * (1 + 2 + 3 + 4 + .... + n), n = 999 / 3
  # 5 + 10 + 15 + 20 + .... + 995 = 5 * (1 + 2 + 3 + 4 + .... + n), n = 999 / 5
  # (1 + 2 + 3 + .... + n) = 1/2 * n * (n + 1)
  p = (999 / number).floor
  (number * (p *(p + 1)) / 2).floor
end

result = sum_divisible_by(3) + sum_divisible_by(5) - sum_divisible_by(15)
puts result
