require 'pry'

class CashRegister

    attr_accessor :total, :discount

    def initialize(discount=20)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity=1)
        #  binding.pry
        self.total += price * quantity
        #why don't we need a title attribute accessor?
    end
    
    def apply_discount 
        
    end 
   
end
