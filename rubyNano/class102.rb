class Customer
  attr_reader :funds

  def initialize(funds, password)
    @funds = funds
    @password = password
  end

  def withdraw_securely(amount, password)
    remove_funds(amount) if password == @password
  end

  private

  def remove_funds(amount)
    @funds -= amount
  end
end

iris = Customer.new(5000, 'jkll')
puts iris.funds
iris.withdraw_securely(-5000, 'jkll')
puts iris.funds
iris.send(:remove_funds, 500)
puts iris.funds

class Employee
  # class variables can't be accessed using `attr_accessor`, so you'll
  # need to create your own `bank` getter method in this case.
  @@bank = 'Udacity International Bank'

  def bank
    @@bank
  end
end

elana = Employee.new
corey = Employee.new
puts elana.bank
puts corey.bank

# Two practical use cases for class variables.
class Customer
  attr_reader :id

  @@id = 1
  @@customers = []

  def initialize
    @id = @@id
    @@id += 1
    @@customers << self
  end

  def self.all
    @@customers
  end
end
