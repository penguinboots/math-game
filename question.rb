class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def ask(player)
    puts "#{player}: What is #{@num1} plus #{@num2}?"
  end

  def check(input)
    @sum == input
  end
end
