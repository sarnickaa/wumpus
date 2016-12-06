module Wumpus
  class Room
    def initialize(number)
      @number = number
      @hazards = []
      @neighbors = []
    end

    attr_reader :neighbors
    attr_accessor :number
    attr_accessor :hazards
    attr_accessor :neighbors

    def add(thing)
      @hazards << thing
    end

    def remove(thing)
      @hazards.delete(thing)
    end

    def has?(thing)
      @hazards.include? thing
    end

    def empty?
      @hazards.empty?
    end

    def safe?
      room_not_safe = @hazards.any?
      @neighbors.each do |the_neighbor| 
        if the_neighbor.hazards.any?
          room_not_safe = true
        end
      end
      !room_not_safe
    end

    def connect(other_room)
      @neighbors.push(other_room)
      other_room.neighbors.push self
    end

    def exits
      @neighbors.map { |exit| exit.number }
    end

    def neighbor(number)
      @neighbors.select {|the_neighbor| the_neighbor.number == number}.first
    end

    def random_neighbor
      @neighbors.sample
    end
  end
end
