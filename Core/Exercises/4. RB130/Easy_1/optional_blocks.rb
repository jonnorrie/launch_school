def compute
  if block_given?
    yield 
  else
    "Does not compute."
  end
end

compute { 5 + 3 } == 8
compute { 'a' + 'b' } == 'ab'
compute == 'Does not compute.'