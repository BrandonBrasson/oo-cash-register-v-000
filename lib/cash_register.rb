class CashRegister
attr_accessor :total, :discount, :price, :items, :last_transaction_amount

   @@all = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def items
      @items
    end


    def add_item(title, price, quantity = 1)
  quantity.times do
    self.items << title
  end
  self.total += price * quantity
  self.last_item = [title, price, quantity]
end
   def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
  else  @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end


  def void_last_transaction
     self.total -= self.last_item[1] * self.last_item[2]
   end
 end


end
