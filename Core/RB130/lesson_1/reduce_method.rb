def reduce(array, acc=0)
  counter = 0

  while counter < array.size
    acc = yield(acc, array[counter])
    counter += 1
  end

  acc
end