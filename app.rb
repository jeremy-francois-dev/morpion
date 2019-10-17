require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/board'


board1 = Board.new
board1.show
puts board1.a1



