class CashRegister
attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def items
      @items
    end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
     quantity.times do
       items << title
     end
   end


   def employee_discount
   if @discount
     @total = @total * (1 - @discount / 100)
     "After the discount, the total comes to $#{@total}"
   else
     "There is no discount to apply."
   end
 end


    def void_last_transaction
    @total = @price
    end


end
