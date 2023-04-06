require 'customer_order'

RSpec.describe CustomerOrder do
  context 'initially' do
    it 'adds and list what the user ordered' do
      my_order = CustomerOrder.new
      fake_item_1 = double :fake_item
      fake_item_2 = double :fake_item
      my_order.add(fake_item_1)
      my_order.add(fake_item_2)
      expect(my_order.all).to eq [fake_item_1, fake_item_2]
    end
  end

  # context 'search for price' do
  #   it 'looks up the price according to keyword' do
  #     receipt = CustomerOrder.new
  #     fake_order_1 = double :fake_item, 
  #     allow(fake_item_1).to receive(:all).with("[
  #       "item_1" => "Tea", "Price" => 2.00
  #       "item_2" => "Latte", "Price" => 3.00
  #       "item_1" => "Flat White", "Price" => 2.60
  #       "item_1" => "Espresso", "Price" => 2.00
  #   ]").and_return("Meow, Jess")

  #   allow(fake_diary).to receive(:count_entries).and_return(2)

  #     receipt.add(fake_item_1)
  #     expect(playlist.search('two')).to eq [track1]
    # end
  # end
end