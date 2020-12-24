class Transfer
  # your code here
  attr_accessor :sender, :reciever, :status, :transfer_amount
  
  def initialize(sender, reciever, amount)
  
    @sender = sender
    @reciever = reciever
    @transfer_amount = amount
    @status = pending
  
  end
  
end
