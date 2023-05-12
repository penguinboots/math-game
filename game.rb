class Game
  def initialize
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def start_game
    puts "Hello! New game started."
  end

  def declare_winner(player)
    puts "#{player.name} wins with #{player.lives} remaining lives."
  end

  def check_score
    if @player_1.is_dead
      declare_winner(@player_2)
    elsif @player_2.is_dead
      declare_winner(@player_1)
    end

  def turn
    @player_1.new_question
    check_score
    @player_2.new_question
    check_score
    puts "Next round!"
  end
end
