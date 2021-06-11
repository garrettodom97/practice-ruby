require "./items"
require "./chordable"

class Keyboards < Items
  include Chordable

  def initialize
    super
    @type = "keyboard"
  end
end