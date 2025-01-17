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


   # accepts a title and a price and increases the total
   # also accepts an optional quantity
   # doesn't forget about the previous total
#when called with two arguments
    #returns an array containing all items that have been added
 # when called with three arguments
   # returns an array containing all items that have been added, including multiples
   def add_item(title, price, quantity=1) 
    self.total += price * quantity
        quantity.times do 
        #<< shovel pushes an object into an array
        items << title
        end
    self.last_transaction = price * quantity
    end


    #applies the discount to the total price
     # returns success message with updated total
      #reduces the total
   # when the cash register was not initialized with an employee discount
       # returns a string error message that there is no discount to apply
   def apply_discount
     if discount !=0
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
        "After the discount, the total comes to $#{self.total}."
     else
        "There is no discount to apply."
     end
   end

   #subtracts the last item from the total
    #returns the total to 0.0 if all items have been removed
   def void_last_transaction
    self.total =self.total - self.last_transaction
   end







end

    


