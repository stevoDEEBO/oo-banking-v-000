class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance, status)
    @name = name
    balance = 1000
    status = "open"
  end

  def deposit(deposit)
    @balance += deposit
  end

  def display_balance

  end

  def valid?

  end

  def close_account

  end
end
