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
    
    (@sender.valid? && @receiver.valid?) ? true : false
    
  end
  
  def execute_transaction
    
    if(@status == "pending")
      if(@sender.balance < @amount)
        
        puts "Transaction rejected. Please check your account balance."
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."
        
      elsif (@sender.balance >= @amount)
        
        @receiver.deposit(@amount)
        @sender.deposit(0-@amount)
        
        @status = "complete"
        
      end
    end
    
  end
  
  def reverse_transfer
    
    if(@status == "complete")
      
        
      @receiver.deposit(0-@amount)
      @sender.deposit(@amount)
      
      @status = "reversed"
      
    end 
    
  end
  
end
