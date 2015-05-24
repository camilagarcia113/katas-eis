
class Board

  def initialize(x, y)
    @board = Array.new(x) {Array.new(y) { }}
  end

  def put_small_ship (x, y)
    @board[x][y] = Small_Ship.new
  end

  def put_large_ship (x, y)
    large_ship = Large_Ship.new
    @board[x][y] = large_ship
    @board[x][y+1] = large_ship
  end

  def is_occupied? (x, y)
    @board[x][y].occupied?
  end

  def shoot_to_position (x, y)
    @board[x][y].shoot
  end
end