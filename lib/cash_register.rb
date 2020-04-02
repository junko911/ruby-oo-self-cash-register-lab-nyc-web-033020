class CashRegister
    attr_reader :discount, :items
    attr_accessor :total

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @last_price = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        quantity.times { @items << title }
        @last_price = price * quantity
        self.total += @last_price
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
    
    def void_last_transaction
        self.total -= @last_price
    end
end