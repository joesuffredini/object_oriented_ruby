#Store Inventory
store_fruit = {}
store_meat = {}
store_beverages = {}
store_fruit = { :type => "Oranges", :color => "orange", :price => 2 }
store_meat = { :type => "Hamburger", :color => "red", :price => 4 }
store_beverages = { :type => "Coke", :color => "black", :price => 2 }
puts "The store has only this fruit #{store_fruit[:type]} and it costs #{store_fruit[:price]} "
puts "The store has type of meat #{store_meat[:type]} and it costs #{store_meat[:price]} "

class Store
  attr_reader :type, :color, :price

  def initialize(input_data)
    @type = input_data[:type]
    @color = input_data[:color]
    @price = input_data[:price]
  end

  def print_info
    puts "The store has #{@type} at this price $#{@price}"
  end
end

store_fruit = Store.new ({ type: "Orange", price: 2 })
store_meat = Store.new ({ type: "Hamburger", price: 4 })
store_fruit.print_info
store_meat.print_info
