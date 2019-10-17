class Game
  attr_accessor :player1, :player2, :board_game
  def initialize
    @player1 = Player.new("X")
    @player2 = Player.new("O")
    @board_game = Board.new
  end

  def victory?
    #victory player1
    if @board_game.hash_board[:a1] == @player1.symbol && @board_game.hash_board[:b1] == @player1.symbol && @board_game.hash_board[:c1] == @player1.symbol ||
      @board_game.hash_board[:a2] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:c2] == @player1.symbol ||
      @board_game.hash_board[:a3] == @player1.symbol && @board_game.hash_board[:b3] == @player1.symbol && @board_game.hash_board[:c3] == @player1.symbol ||
      @board_game.hash_board[:a1] == @player1.symbol && @board_game.hash_board[:a2] == @player1.symbol && @board_game.hash_board[:a3] == @player1.symbol ||
      @board_game.hash_board[:b1] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:b3] == @player1.symbol ||
      @board_game.hash_board[:c1] == @player1.symbol && @board_game.hash_board[:c2] == @player1.symbol && @board_game.hash_board[:c3] == @player1.symbol ||
      @board_game.hash_board[:a1] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:c3] == @player1.symbol ||
      @board_game.hash_board[:c1] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:a3] == @player1.symbol 
      puts "Bravo #{@player1.name}, tu as gagné !"
      return true
    #victory player2
    elsif @board_game.hash_board[:a1] == @player2.symbol && @board_game.hash_board[:b1] == @player2.symbol && @board_game.hash_board[:c1] == @player2.symbol ||
      @board_game.hash_board[:a2] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:c2] == @player2.symbol ||
      @board_game.hash_board[:a3] == @player2.symbol && @board_game.hash_board[:b3] == @player2.symbol && @board_game.hash_board[:c3] == @player2.symbol ||
      @board_game.hash_board[:a1] == @player2.symbol && @board_game.hash_board[:a2] == @player2.symbol && @board_game.hash_board[:a3] == @player2.symbol ||
      @board_game.hash_board[:b1] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:b3] == @player2.symbol ||
      @board_game.hash_board[:c1] == @player2.symbol && @board_game.hash_board[:c2] == @player2.symbol && @board_game.hash_board[:c3] == @player2.symbol ||
      @board_game.hash_board[:a1] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:c3] == @player2.symbol ||
      @board_game.hash_board[:c1] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:a3] == @player2.symbol 
      puts "Bravo #{@player2.name}, tu as gagné !"
      return true  
    else
      return false    
    end
  end

  def draw?
    !(@board_game.hash_board.value?(" "))
  end

  def still_on_going?
    victory? == false && draw? == false
  end
end