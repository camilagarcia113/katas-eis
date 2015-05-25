require_relative '../../app/models/water.rb'
require_relative '../../app/models/small_ship.rb'
require_relative '../../app/models/large_ship.rb'

class Board

  def initialize(x, y)
    @board = Array.new(x) {Array.new(y) { Water.new }}
    @x = x
    @y = y
  end

  def put_small_ship (x, y)
    if is_invalid_location x, y
      position_out_of_board_error
    else
      @board[x][y] = Small_Ship.new
    end
  end

  def put_large_ship (x, y)
    large_ship = Large_Ship.new
    if is_invalid_location(x, y) || is_invalid_location(x, y+1)
      position_out_of_board_error
    else
      @board[x][y] = large_ship
      @board[x][y+1] = large_ship
    end
  end

  def is_occupied? (x, y)
    @board[x][y].occupied?
  end

  def shoot_to_position (x, y)
    @board[x][y].shoot
  end

  def is_invalid_location (x, y)
    @x < x && @y < y
    end

    def position_out_of_board_error
      raise 'Position out of board'
    end
end