class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid?
    @receiver.valid?
  end

  def execute_transaction
    if @sender.balance >= @amount
      @sender -= @amount
      @receiver += @amount
      @status = "complete"
    else
      puts "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end

  def reverse_transfer
    if @status = "complete"
      @sender += @amount
      @receiver -= @amount
      @status = "reversed"
    end
  end
end
