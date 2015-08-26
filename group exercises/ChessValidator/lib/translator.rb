require 'io/console'
require_relative 'rook.rb'
require_relative 'pawn.rb'

class Translator
  def initialize(moves_to_be_checked, board)
    @moves_to_be_checked = moves_to_be_checked
    @board = board
  end

  def check_class
    @moves_to_be_checked.each do |move|
      origin_x = move[0].split(//)[0].ord - 97
      origin_y = move[0].split(//)[1].to_i - 1
      destination_x = move[1].split(//)[0].ord - 97
      destination_y = move[1].split(//)[1].to_i - 1
      if @board[origin_y][origin_x] == nil
        puts "You cannot do such move"
      else
        solve(origin_x, origin_y ,destination_x, destination_y)
      end
    end
  end

  def solve(origin_x, origin_y ,destination_x, destination_y)
    if @board[origin_y][origin_x].to_s.include? "R"
      Rook.new( [origin_x, origin_y] , [destination_x, destination_y]).is_move_legal?
    elsif @board[origin_y][origin_x].to_s.include? "P"
      Pawn.new( [origin_x, origin_y] , [destination_x, destination_y]).is_move_legal?
    else
      puts "My AI doesn't allow me to move other pawns yet. Stay tuned.."
    end
  end
end
