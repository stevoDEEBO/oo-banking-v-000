class Transfer


  def initialize(sender, receiver, amount)
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

  def

end
