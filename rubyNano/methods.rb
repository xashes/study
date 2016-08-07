def remove_dogs(arr)
  arr.delete('dog')
  arr
end

arr = %w{cat kitty dog bunny walter dog parrot}
puts arr

# Global Variables
$global = 'everyone'

def world_peace
  puts "I love #{$global}"
end

# options hash
def bill_with_tip(subtotal, options = {})

  # Calculate the tip
  tip = options[:tip] || 18
  tip = tip / 100

  # Calculate the discount
  if options[:discount]
    discount = (100 - options[:discount]) / 100.0
    subtotal *= discount
  end

  tip *= subtotal
  subtotal + tip
end

puts bill_with_tip(30, tip: 20, discount: 10)

# Splat
def make_words_into_sentence(*words)
  words.join(' ') + '.'
end

puts make_words_into_sentence('Easy', 'as', 'pie')
puts make_words_into_sentence('Bingo')

def 💩
  puts 'What\'s this'
end

# Method name conventions
# the ! tends to indicate that this method might make some permanent or
# potentially dangerous change
# The ? should be used to end a method meant to return a boolean value.
def divisible_by_5?(num)
  num % 5 == 0
end

puts bill_with_tip 30, tip: 20, discount: 10
