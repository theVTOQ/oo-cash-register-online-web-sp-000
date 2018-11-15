class CashRegister
  attr_accessor :total, :items, :last_price, :last_quantity

  def initialize(discount = 0)
    @total = 0
    @total -= discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price*quantity
    quantity.times {@items << item}
    @last_price = price
    @last_quantity = quantity
  end

  def void_last_transaction
    @total -= @last_price*@last_quantity
  end
end
