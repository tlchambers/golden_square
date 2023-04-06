require 'menu'

RSpec.describe Menu do
  it 'returns a list of the menu for customer to view' do
    customer = Menu.new("")
    expect(customer.all).to eq [
      {"item_1" => "Tea", "Price" => 2},
      {"item_2" => "Latte", "Price" => 3},
      {"item_3" => "Flat White", "Price" => 2.50},
      {"item_4" => "Espresso", "Price" => 2.10}
  ]
  end

  it 'adds the items the customer wants to order in a list' do
    customer = Menu.new("item_1")
    expect(customer.select_item).to eq "item_1"
  end

  it 'searches the name of the item selected by item number' do
    customer = Menu.new("item_1")
    customer.select_item
    expect(customer.search_name_of_item).to eq "Tea"
  end
# to come back to as I can't look up the price when looping through hash
  it 'searches the price of the item selected by item number' do
    customer = Menu.new("item_1")
    customer.select_item
    expect(customer.search_price).to eq "2"
  end
end