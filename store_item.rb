items = [

  { type: "guitar", color: "red", price: 1600 },

  { type: "piano", color: "black", price: 2000 },

  { :type => "drumset", :color => "blue", :price => 2500 },

  { :type => "tamborine", :color => "blue", :price => 2500 },

]

index = 0
while index < items.length
  puts "Item #{index + 1} is a #{items[index][:type]} that is #{items[index][:color]} and costs $#{items[index][:price]}."
  index = index + 1
end

class Items
  attr_accessor :type, :color, :price

  def initialize(input_options)
    @type = "instrument"
    @color = "black"
    @price = 0
    if input_options[:type] != nil
      @type = input_options[:type]
    end
    if input_options[:color] != nil
      @color = input_options[:color]
    end
    if input_options[:price] != nil
      @price = input_options[:price]
    end
  end

  # def type(*args)
  #   if args.length > 0
  #     @type = args[0]
  #   end
  #   return @type
  # end

  # def color(*args)
  #   if args.length > 0
  #     @color = args[0]
  #   end
  #   return @color
  # end

  # def price(*args)
  #   if args.length > 0
  #     @price = args[0]
  #   end
  #   return @price
  # end
end

item1 = Items.new("guitar", "red", 1600)
puts item1.type
item1.type = "piano"
puts item1.type
#puts item1.type("piano")
puts item1.color
item1.color = "black"
puts item1.color
#puts item1.color("black")
puts item1.price
item1.price = 2000
#puts item1.price(2000)
puts item1.price
