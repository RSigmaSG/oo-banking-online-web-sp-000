class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
  
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  
  end
  
  def valid?
    
    (sender.valid? && receiver.valid?) ? true : false
    
  end
  
  def execute_transaction
    
    if(@status = pending)
      if(sender.balance < amount)
        
        puts "Transaction rejected. Please check your account balance."
        return "Transaction rejected. Please check your account balance."
        
      else
        
        reciever.deposit(amount)
        sender.deposit(0-amount)
        
      end
      
    end
    
  end
  
  def reverse_transfer
    
    
    
  end
  
end
