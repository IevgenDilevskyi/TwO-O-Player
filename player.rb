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
