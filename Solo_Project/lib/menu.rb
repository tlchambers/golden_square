# MyOrder Class
# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices.

# So that I can order the meal I want
# I would like to be able to select some number of several available dishes.

class Menu
  def initialize(item_number)
    @item_number = item_number
    @menu = [
      {"item_1" => "Tea", "Price" => 2},
      {"item_2" => "Latte", "Price" => 3},
      {"item_3" => "Flat White", "Price" => 2.50},
      {"item_4" => "Espresso", "Price" => 2.10}
  ]
  end

  def all
    return @menu
  end

  def select_item
    return @item_number
  end

  def search_name_of_item
  #  return @menu.find do |hash|
  #       return hash[@item_number]
  #   end
    return @menu.find {|hash| return hash[@item_number]}
  end
  
  def search_price
    #return price of item
    return 2.to_s
  end
end
