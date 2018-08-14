require 'pry'

class CashRegister
  attr_accessor :total

    def initialize(employee_discount=0)

    @total = 0
    @employee_discount = employee_discount
    @items = []

  end

  def discount
    20
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total += (price*quantity)
    @items << title
  end

  def apply_discount
    #binding.pry
    @total = (@total - @total*discount.fdiv(100)).floor
    # the cash register was initialized with an employee discount
    if @total == (@total - @total*discount.fdiv(100))
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    #binding.pry
    @items
  end

  # subtracts the last transaction from the total
  def void_last_transaction
    @total = @total - 
  end

end
