class CashRegister

    attr_accessor :total
    attr_reader :discount, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity=1)
        @last_price = price * quantity
        @total += @last_price
        quantity.times { @items << item }
    end

    def apply_discount
        if self.discount != 0
            discount = self.total * self.discount / 100
            self.total -= discount
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= @last_price
    end

end