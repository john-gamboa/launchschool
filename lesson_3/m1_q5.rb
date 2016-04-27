# handle zero or negative numbers gracefully in the following code

def factors(number)
  dividend = number
  divisors = []
  # begin 
  # replaced by while 
  while number > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end # removed - until dividend == 0
  divisors
end