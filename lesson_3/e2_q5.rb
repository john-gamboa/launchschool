# Add new ages to the original age hash

ages = { "Herman" => 32,
          "Lily" => 30,
          "Grandpa" => 402,
          "Eddie" => 10
        }
         
ages_new = { "Marilyn" => 22,
              "Spot" => 237
            }

ages.merge!(ages_new)

puts "#{ages}"