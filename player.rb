class Player

  attr_accessor :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def lose_life
    @lives = @lives - 1
  end

  def is_dead
    @lives = 0
  end

end
