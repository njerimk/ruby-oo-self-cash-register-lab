class CashRegister
    attr_accessor :total, :discount, :last_transaction

    def initialize(discount = 0)
        @total = 0.0 
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
         @total += price * quantity
         quantity.times do
            @items << title
         end
         @last_transaction = title, price, quantity
    end


    def apply_discount
        #appplies the discount from initialize means use @ 
        if @discount > 0 
            @discount = @discount/100.to_f
            @total = @total - (@total * (@discount))
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
         
    end 

    def items 
        @items 
    end

    def void_last_transaction #(items, total)
        @total -= @last_transaction[1] * @last_transaction[2]
    end


end

# puts trader_joes_reg2 = CashRegister.new
# pp trader_joes_reg2.add_item("apple",3.99,2)
# pp trader_joes_reg2.add_item("motts_gummies", 1.99)
# pp trader_joes_reg2.items
# pp trader_joes_reg2.total
# puts trader_joes_reg2.last_transaction
# puts trader_joes_reg2.void_last_transaction
# puts trader_joes_reg2.void_last_transaction
# puts trader_joes_reg2.void_last_transaction
# puts trader_joes_reg2.total



