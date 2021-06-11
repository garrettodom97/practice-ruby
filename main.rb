require "./items"
require "./guitars"
require "./keyboards"

item1 = Guitars.new(type: "guitar", color: "red", price: 1600)
item2 = Keyboards.new(type: "keyboard", color: "blue", price: 2000)

puts
puts item1.item_info
puts item2.item_info

item1.play_chord
item2.play_chord
