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
      safe_room = hazards.empty? #return true if empty
      neighb = true # truthy

      neighbors.each do |neighbor|
        if neighbor.hazards.empty? # returns true if no hazards in neighbors hazards array
          neighb # = true
        else
          neighb = false # set to false if hazard in array found
        end
      end
      safe_room && neighb # && only returns true if both truthy
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
      neighbors.map { |n| n.number }
    end

    def neighbor(number)
      # check to see if number passed is a neighbor
      # neighbour number must be in the neighbors array
      neighbors.find { |n| n.number == number }

    end

    def random_neighbor
      neighbors.sample
    end
  end
end
