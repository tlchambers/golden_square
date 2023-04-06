# Receipt Class
# As a customer
# So that I can verify that my order is correct
# I would like to see an itemised receipt with a grand total.

class CustomerOrder
  def initialize
    @order_list = []
  end

  def all
    return @order_list
  end

  def add(item_number) # my_order is an instance of MyOrder
    @order_list.push(item_number)
  end

  def search_price(item_number)
     # Returns price that match the item
  end

  def total_price
    # return total amount of order
  end
end