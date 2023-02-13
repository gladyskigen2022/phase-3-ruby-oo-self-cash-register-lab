#.new
   # takes one optional argument, an employee discount, on initialization (FAILED - 1)
   # sets an instance variable @total on initialization to zero (FAILED - 2)

class CashRegister
    attr_accessor :total, :discount, :items, last_transaction
    

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items =[]
    end

   def add_item(title, price, quantity=1) 
    self.total += price * quantity
    quantity.times do 
        #<< shovel pushes an object into an array
        items << title
    end

    




end

    


