class Dog
  # has a tail
  # has a name
  # has a breed
  # can bark
  # can drink water from bowl
  def wag_tail
    puts 'Waggy waggy wag!'
  end

  def drink_water_from_bowl
    puts 'Slurp slurp, this water\'s great'
  end
end

fido = Dog.new
puts "fido's class: #{fido.class}"
puts "fido is a Dog? #{fido.is_a? Dog}"

puts String.methods.length
puts String.instance_methods.length
puts fido.methods[0..1]

class User
  # setter method (mutator method)
  # def username=(value)
  #   # instance variable
  #   @username = value
  # end
  # attr_reader :username, :birthday

  # getter method - it exists to get the value of a variable belonging to an
  # object
  # def username
  #   @username
  # end
  # attr_writer :username
  attr_accessor :username

  def initialize
    @username = username
  end
end

julia = User.new
julia.username = 'coolgirl2000'
puts julia.username
