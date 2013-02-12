require 'socket'
require 'io/wait'

require 'world'
require 'camera'
require 'player'

class MinecraftApi

  attr_reader :world
  attr_reader :camera
  attr_reader :player

  def initialize(host = 'localhost', port = 4711)
    @socket = TCPSocket.new host, port
    @world = World.new(self)
    @camera = Camera.new(self)
    @player = Player.new(self)
  end

  # The other api's have a method like this
  # I haven't seen it be invoked yet. Perhaps it is not needed
  def drain()
    while @socket.ready?
      puts "DRAINING DATA FROM SOCKET [#{@socket.gets}]"
    end
  end

  def send(data)
    drain()
    @socket.puts "#{data}"
  end

  def send_and_receive(data)
    send(data)
    @socket.gets.chomp
  end



  def close
    @socket.close
  end
end
