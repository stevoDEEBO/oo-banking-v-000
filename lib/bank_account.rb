class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(deposit)
    @balance += deposit
  end

  def display_balance
    @balance
  end

  def valid?
    return true if self.balance != 0 || self.status != "closed"
  end

  def close_account
    self.status = "closed"  
  end
end
