class Player
  def initialize(api)
    @api = api
  end

  def go(x,y,z)
    @api.send("player.setTile(#{x},#{y},#{z})")
  end

  def direction
    @api.send_and_receive("player.getDirection()").to_f
  end

  def pitch
    @api.send_and_receive("player.getPitch()").to_f
  end

  def rotation
    @api.send_and_receive("player.getRotation()").to_f
  end

  def location
    response = @api.send_and_receive("player.getTile()")
    response.split(',').map { |s| s.to_i }
  end
end
