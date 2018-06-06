class Transfer


  def initialize(sender, receiver, status, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
end
