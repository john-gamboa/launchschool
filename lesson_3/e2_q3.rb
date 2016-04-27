# throw our really old Munsters

ages = { "Herman" => 32,
          "Lily" => 30,
          "Grandpa" => 402,
          "Eddie" => 10,
          "Marilyn" => 22,
          "Spot" => 237
        }

ages.keep_if{|_,age| age < 100}
puts "New hash #{ages}"