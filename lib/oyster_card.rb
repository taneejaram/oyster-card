class OysterCard

  attr_reader :balance
  DEFAULT_LIMIT = 90

  def initialize
    @balance = 0
  end

  def display_balance
    @balance
  end

  def top_up(money)
    @balance += money
    raise "Top up limit exceeded" if @balance > DEFAULT_LIMIT
    @balance
  end

end
