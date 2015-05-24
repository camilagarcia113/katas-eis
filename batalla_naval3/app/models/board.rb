
class Board

  def initialize(x, y)
    @board = Array.new(x) {Array.new(y) { }}
  end

  def put_small_ship (x, y)
    @board[x][y] = Small_Ship.new
  end

  def is_occupied? (x, y)
    @board[x][y].occupied?
  end
end