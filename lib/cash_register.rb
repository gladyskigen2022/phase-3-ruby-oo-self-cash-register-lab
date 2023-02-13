#.new
   # takes one optional argument, an employee discount, on initialization (FAILED - 1)
   # sets an instance variable @total on initialization to zero (FAILED - 2)

class CashRegister
    attr_accessor :total
    attr_reader :discount

    def initialize(discount)
        @discount = discount
        @total = 0
    end
end

    #def add_item(title, price, quantity)


