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
    @sender -= @amount
    @receiver += @amount
    @status = "complete"
  end

  def

end
