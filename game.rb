class Game
  def initialize(p1, p2)
    @player_1 = Player.new(p1, 3)
    @player_2 = Player.new(p2, 3)
  end

  def start_game
    puts "Hello! New game started."
    puts "********** ********** **********"
    turn
  end

  def declare_winner(player)
    if player.lives > 1
      puts "#{player.name} wins with #{player.lives} remaining lives."
    else
      puts "#{player.name} wins with 1 remaining life! Close one!"
    end

    puts "********** GAME OVER **********"

    exit
  end

  def check_score
    if @player_1.is_dead
      declare_winner(@player_2)
    elsif @player_2.is_dead
      declare_winner(@player_1)
    end
  end

  def turn
    @player_1.new_question
    check_score
    puts "********** ********** **********"
    @player_2.new_question
    check_score
    puts "********** ********** **********"
    puts "Next round!"
    puts "********** ********** **********"
    turn
  end
end
