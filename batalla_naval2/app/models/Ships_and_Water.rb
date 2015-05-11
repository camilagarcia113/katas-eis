
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
    "Ship sunk"
  end

end

class Large_Ship < Ship

  def initialize
    @is_damaged = false
  end

  def shoot
    if @is_damaged
      'Ship sunk'
    else
      @is_damaged = true
      'Ship damaged'
    end
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