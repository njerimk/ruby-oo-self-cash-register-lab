require 'pry'
class CashRegister
   
    attr_accessor :total, :discount, :items, :last_transaction
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []  
        @last_transaction = [] 
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        quantity.times do |i|
          self.items << title
        end     
        @last_transaction << price * quantity 
    end
    
    def apply_discount 
        discount_total = self.total * self.discount/100 
        self.total -= discount_total
        if discount_total > 0
            "After the discount, the total comes to $#{self.total}." 
        else
            "There is no discount to apply." 
        end    
    end 

    def void_last_transaction
      @total -= @last_transaction.pop

    end

    
   
end
