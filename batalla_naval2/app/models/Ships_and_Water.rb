
class Ship

  def occupied?
    true
  end

  def shoot
    raise 'subclass responsibility'
  end

end

class Small_Ship < Ship

  def shoot
    "Ship sinked"
  end

end

class Large_Ship < Ship

  def initialize
    @is_damaged = false
  end

  def shoot
    if @is_damaged
      "Ship sinked"
    else
      @is_damaged = true
      "Ship damaged"
    end
  end

  def direction
    @direction
  end

end

class Water
  def occupied?
    false
  end

  def shoot
    'Water'
  end
end