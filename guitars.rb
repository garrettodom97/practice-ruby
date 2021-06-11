require "./items"
require "./chordable.rb"

class Guitars < Items
  include Chordable

  def initialize
    super
    @type = "guitar"
  end
end
