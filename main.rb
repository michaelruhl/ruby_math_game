

class Game
def initialize

  @player_1 = {
    lives: 3,
    score: 0
  }
  
  @player_2 = {
    lives: 3,
    score: 0
  }
  
def math_game(player_1, player_2)
  while player_1[:lives] > 0 and player_2[:lives] > 0
    def num1
      @num1 = rand(1..100)
    end
    def num2
      @num2 = rand(1..100)
    end
    puts "Player 1: What does #{num1} plus #{num2} equal?"
  
    print "> "
    choice = $stdin.gets.chomp
  
    if choice.to_i != (@num1 += @num2)  
      player_2[:lives] -= 1
      player_1[:score] += 1
      puts "Seriously? No!"
      puts "player 1 score: #{player_1[:score]} player 2 score: #{player_2[:score]}"
    else
      player_2[:score] += 1
      puts "player 1 score: #{player_1[:score]} player 2 score: #{player_2[:score]}"
    end

# ###################################################

    def num1
      @num1 = rand(1..100)
    end
    def num2
      @num2 = rand(1..100)
    end
    puts "Player 2: What does #{num1} plus #{num2} equal?"
  
    print "> "
    choice = $stdin.gets.chomp
  
    if choice.to_i != (@num1 + @num2)  
      player_1[:lives] -= 1
      player_2[:score] += 1
      puts "Seriously? No!"
      puts "player 1 score: #{player_1[:score]} player 2 score: #{player_2[:score]}"
    else
      player_1[:score] += 1
      puts "player 1 score: #{player_1[:score]} player 2 score: #{player_2[:score]}"
    end
  end
  if player_1[:lives] > 0
    puts "PLAYER 1 WINSSSSSSSS LETS GOOOOOOOO"
  else puts "NOWAYYYY PLAYER 2 DEMOLISHED THEM"
  end
end

math_game(@player_1, @player_2)
end
end