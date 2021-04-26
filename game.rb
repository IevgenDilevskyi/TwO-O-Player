require './player'
require './question'

class Game

  def initialize
    @player1 = Player.new("Eugene")
    @player2 = Player.new("Alice")
    @question = Question.new
    @current_player = @player1
  end

  def start_game
    while @player1.lives > 0 && @player2.lives > 0 do
      puts "-----NEW TURN-----\n\n"
      @question.question(@current_player.name)
      response = $stdin.gets.chomp.to_i
      if response == @question.correct_answer
        puts "#{@current_player.name}: YES! That's correct! \n\n"
      else
        puts "\n#{@current_player.name}: Seriously! No!\n\n"
        @current_player.loose
      end
      puts "#{@player1.name}: #{@player1.lives}/3 VS #{@player2.name}: #{@player2.lives}/3\n\n"

      if @current_player.lives == 0 && @current_player == @player1
        puts "#{@player2.name} wins with a score of #{@player2.lives}/3\n"
        puts 
        puts "-----GAME OVER-----\n\n"
        puts "Good bye\n\n"
        break
      elsif @current_player.lives == 0 && @current_player == @player2
        puts "#{@player1.name} wins with a score of #{@player1.lives}/3\n"
        puts 
        puts "-----GAME OVER-----\n\n"
        puts "Good bye\n\n"
        break
      end

      if @current_player.name == @player1.name
        @current_player = @player2
      else
        @current_player = @player1
      end
      
    end

  end

end

