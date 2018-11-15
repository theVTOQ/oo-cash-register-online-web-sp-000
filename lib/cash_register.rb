class CashRegister
  attr_accessor :total, :items, :last_price, :last_quantity, :discount

  def initialize(discount = 0)
    @discount = Float (discount)
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

  def apply_discount
    @total *= @discount
  end
end
