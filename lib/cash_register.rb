class CashRegister
attr_accessor :total, :discount, :price, :items

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
    @total += price * quantity
     quantity.times do
       items << title
     end
   end


   def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
  else  @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end

      def void_last_transaction()
      total =- last_transaction
        end



end
