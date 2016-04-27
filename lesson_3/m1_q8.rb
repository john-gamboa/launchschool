# my own titleize method

def titleize(title)
  title.split.map{|word| word.capitalize}.join(' ')
end

title = "the fox and the hound"
puts titleize(title)