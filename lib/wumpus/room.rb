module Wumpus
  class Room
    def initialize(number)
      @number = number
      @hazards = []
      @other_rooms = []
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    attr_reader :number, :neighbors
    attr_accessor :hazards


    def add(thing)
      # raise NotImplementedError, "See lib/wumpus/room.rb"
      hazards.push(thing)
    end

    def remove(thing)
      # raise NotImplementedError, "See lib/wumpus/room.rb"
      hazards.delete(thing)
    end

    def has?(thing)
      hazards.include?(thing)
    end

    def empty?
      hazards.empty?
    end

    def safe?
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def connect(other_room)
      # raise NotImplementedError, "See lib/wumpus/room.rb"
      other_rooms.push(other_room)
    end

    def exits
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def neighbor(number)
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end

    def random_neighbor
      # raise NotImplementedError, "See lib/wumpus/room.rb"
    end
  end
end
