

class Turn

  attr_accessor :turn

  def initialize
    @turn = 1

  end

  def player
    @turn += 1
    if @turn%2
      puts "Player 1:"
    else
      puts "Player 2:"
    end
  end



end

turn = Turn.new
# puts turn.turn