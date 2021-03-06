class Items
  attr_accessor :type, :color, :price

  def initialize(type: "instrument", color: "black", price: 0)
    @type = type
    @color = color
    @price = price
  end

  def item_info
    puts "Item is a(n) #{type} that is #{color} and costs #{price}"
  end
end

class Guitars < Items
  include Chordable

  def initialize
    super
    @type = "guitar"
  end
end

class Keyboards < Items
  include Chordable

  def initialize
    super
    @type = "keyboard"
  end
end
