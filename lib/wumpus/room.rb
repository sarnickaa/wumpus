module Wumpus
  class Room
    def initialize(number)
      @number = number
      @hazards = []
      @neighbors = []
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
      hazards.empty? && neighbors { |a| a.hazards.empty? }
    end

    def connect(other_room)
      # raise NotImplementedError, "See lib/wumpus/room.rb"
      neighbors.push(other_room)
      # checked implementation code to figure this out
      # room initialized with empty array - can push other rooms into it as exits
      # to make the connection 2 way - must push current room into the neightbour array that is initialized when other_room is instatiated
      # self refers to the OBJECT INSTANCE
      other_room.neighbors.push(self)

    end

    def exits
      neighbors
    end

    def neighbor(number)

    end

    def random_neighbor
      neighbors.sample
    end
  end
end
