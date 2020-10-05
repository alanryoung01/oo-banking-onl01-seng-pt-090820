class Transfer
  attr_accessor :status
  attr_reader :amount, :sender, :receiver

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    receiver.valid? && sender.valid?
  end

def reject_transaction
  self.status = "rejected"
  "Transaction rejected. Please check your account balance."
end

def execute_transaction
  if valid? && sender.balance > amount && self.status == "pending"

  end


end
