class Application
  attr_accessor :decision, :game

  def initialize
    @decision = "YES"
  end

  def party_ongoing
    @game = Game.new
    while @game.victory? == false && @game.draw? == false
      @game.board_game.show
      @game.placement(game.player1)
      @game.board_game.show
      if @game.victory? == false && @game.draw? == false
        @game.placement(@game.player2)
      end
    end
  end

  def party_ending
    @game.show_result
    puts "Souhaitez-vous maintenant refaire une partie ? Entrez 'YES' or 'NO' please."
    @decision = gets.chomp
    while @decision != "YES" && @decision != "NO"
      puts "Merci de rentrer 'YES' or 'NO' avec format"
      @decision = gets.chomp
    end
  end
end
