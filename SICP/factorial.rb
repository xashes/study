def factorial(n)
  if n == 1
    1
  else
    n * factorial(n-1)
  end
end


def factorial2(n)
  counter = 1
  product = 1
  while counter < (n + 1)
    product *= counter
    counter += 1
  end
  return product
end

p factorial2(6)
