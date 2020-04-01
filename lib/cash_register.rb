require 'pry'

class CashRegister
    attr_reader :discount
    attr_accessor  :total, :last_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item_list = []
        @last_price = 0
    end

    def add_item(title, price, quantity = 1)
        quantity.times { @item_list << title }
        self.total += price * quantity
        @last_price = price * quantity
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            discount_amount = self.total * @discount / 100
            self.total -= discount_amount
            "After the discount, the total comes to $#{self.total}."
        end
    end
    
    def items
        @item_list
    end
    
    def void_last_transaction
        self.total -= self.last_price
    end
    
end

binding.pry