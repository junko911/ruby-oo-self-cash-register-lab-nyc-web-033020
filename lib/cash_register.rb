class CashRegister
    attr_reader :discount
    attr_accessor  :total

    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end
end
