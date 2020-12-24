class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :transfer_amount
  
  def initialize(sender, receiver, amount)
  
    @sender = sender
    @receiver = receiver
    @transfer_amount = amount
    @status = "pending"
  
  end
  
end
