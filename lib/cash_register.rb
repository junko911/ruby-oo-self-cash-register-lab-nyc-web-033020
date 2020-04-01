class CashRegister
    attr_reader :discount
    attr_accessor  :total

    def initialize(discount = 20)
        @total = 0
        @discount = 1 - (discount / 100)
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
    end

    def apply_discount
        @total *= @discount
    end

    def item
    end

    def void_last_transaction
    end

end
