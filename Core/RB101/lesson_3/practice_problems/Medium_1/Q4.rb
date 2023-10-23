def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
# This implementation uses <<, which will mutate the buffer itself.
# This also produces a side effect as well as returns a meaningful value,
# which should be avoided


def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
# This implementation uses +, which does not mutate the buffer, and returns a new object instead