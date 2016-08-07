def sqrt(n)
  def sqrt_iter(guess, n)
    if good_enough?(guess, n) then
      guess
    else
      sqrt_iter(improve(guess, n), n)
    end
  end

  def good_enough?(guess, n)
    (guess**2 / n - 1).abs < 0.001
  end

  def improve(guess, n)
    (guess + n/guess) / 2
  end

  sqrt_iter(1.0, n)
end

puts sqrt(9)
puts sqrt(2)
puts sqrt(0.00001)
