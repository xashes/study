module Heroify
  def save_people

  end

  def wear_costume

  end

  def fly

  end
end

class Superman
  include Heroify

  def visit_krypton

  end
end

class WonderWoman
  include Heroify

  def visit_greece

  end
end

module Puppify
  def new_pups(pups)
    @@puppies = []
    pups.times do |pup|
      @@puppies << Dog.new
    end
    return @@puppies
  end
end

class Dog
  extend Puppify
end

puts Dog.new_pups(2)
