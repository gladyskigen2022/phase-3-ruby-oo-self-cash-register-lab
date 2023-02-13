#.new
   # takes one optional argument, an employee discount, on initialization (FAILED - 1)
   # sets an instance variable @total on initialization to zero (FAILED - 2)

class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    

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
    self.last_transaction = price * quantity
    end

   def apply_discount
     if discount !=0
        self.total = (total * ((100.0 - discount.to_f)/100)).t0_i
        "After the discount, the total comes to $#{self.total}."
     else
        "There is no discount to apply."
     end
   end







end

    


