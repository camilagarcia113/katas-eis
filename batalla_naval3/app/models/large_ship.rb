require_relative '../../app/models/ship.rb'

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