class Oystercard

   attr_reader :balance
   LIMIT= 90

  def initialize
    @balance = 0
  end

  def top_up(amount)
    @balance = @balance + amount
    if @balance > LIMIT
      @balance = @balance - amount
      raise StandardError.new "Balance cannot exceed £#{LIMIT}"
    else
      return "Your current balance is £#{@balance}"
    end
  end

  def deduct(fare)
    @balance = @balance - fare
    puts "You have been charged £#{fare}"
    puts "Your current balance is £#{@balance}"
  end

end
