# replace important with urgent in the string

advice = "Few things in life are as important as house training your pet dinosaur."

puts advice
puts "....substituting..."
advice.gsub!('important', 'urgent')
puts advice