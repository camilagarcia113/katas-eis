class Board

  def initialize(x, y)
    @board = Array.new(x) {Array.new(y) { Water.new }}
  end

  def put_small_ship (x, y)
    @board[x][y] = Small_Ship.new
  end

  def put_large_ship (x, y, ship)
    if ship.direction.eql?'vertical'
      @board[x][y] = ship
      @board[x][y-1] = ship
    else
      @board[x][y] = ship
      @board[x+1][y] = ship
    end
  end

  def is_occupied? (x, y)
    @board[x][y].occupied?
  end

  def shoot_to_position (x, y)
      @board[x][y].shoot
  end

end
