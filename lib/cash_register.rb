class CashRegister
  attr_accessor :total, :items

  def initialize(discount = 0)
    @total = 0
    @total -= discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price*quantity
    quantity.times {@items << item}
  end
end
