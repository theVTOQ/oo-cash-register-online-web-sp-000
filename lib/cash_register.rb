class CashRegister
  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @total -= discount
  end

  def add_item(item, price, quantity = 1)
    @total += price*quantity
  end
end
