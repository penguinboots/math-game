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
    @lives === 0
  end

  def new_question
    new_q = Question.new
    new_q.ask(name)
    @user_in = gets.chomp
    if new_q.check?(@user_in.to_i)
      puts "That's right!"
    else
      puts "That's not right!"
      lose_life
      puts "You lost a life! #{name} now has #{lives} lives left..."
    end
  end
end
