# rolling buffer
# is there difference btween the 2 methods (+ vs <<)

def rolling_buffer(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

# both have the same return value
# first method argument "buffer" will be changed after method returns
# second method doesn't alter the arguments