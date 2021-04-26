
class Player

  attr_accessor :name, :lives

  def initialize (name)
    @name = name
    @lives = 3
  end

  def loose
    @lives -= 1
    @lives
  end

end

# puts player1.win
# puts player1.loose