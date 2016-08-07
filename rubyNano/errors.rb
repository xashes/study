class InvalidPasswordError < StandardError

end

class Customer
  attr_reader :funds

  def initialize(funds, password)
    @password = password
    @funds = funds
  end

  def withdraw_securely(amount, password)
    if password == @password
      remove_funds(amount)
    else
      raise InvalidPasswordError, "'#{password}' is not correct."
    end
  end

  private

  def remove_funds(amount)
    @funds -= amount
  end
end
