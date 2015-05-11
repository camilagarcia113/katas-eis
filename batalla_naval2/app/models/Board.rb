class Board

  def initialize(x, y)
    @board = Array.new(x) {Array.new(y)}
  end

  def put_ship (ship, x, y)
    @board[x][y] = ship
  end

  def is_occupied? (x, y)
    @board[x][y].occupied?
  end

end
