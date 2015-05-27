
class Ship
  def occupied?
    true
  end

  def shoot
    raise 'Subclass responsibility'
  end
end