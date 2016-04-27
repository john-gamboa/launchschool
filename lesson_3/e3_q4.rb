# remove everything starting from "house"

advice = "Few things are as important as house training your pet dinosaur."

house_index = advice.index('house')

puts "#{house_index} is index of 'house'"

puts "return values is: '#{advice.slice(0, advice.index('house'))}'"
advice.slice!(0, advice.index('house'))

puts "advice variable is: '#{advice}'"