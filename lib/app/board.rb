class Board
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3 

  def initialize
    @a1 = @a2 = @a3 = @b1 = @b2 = @b3 = @c1 = @c2 = @c3 = " "
  end

  def show
    puts "     A    B    C"
    puts "    " +"-"* 13
    puts " 1  | #{@a1} | #{@b1} | #{@c1} |"
    puts "    " +"-"* 13
    puts " 2  | #{@a2} | #{@b2} | #{@c2} |"
    puts "    " +"-"* 13
    puts " 3  | #{@a3} | #{@b3} | #{@c3} |"
    puts "    " +"-"* 13
  end

end






