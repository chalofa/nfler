module Nfler

  # Each of the Teams in the NFL
  class Team
    attr_accessor :name, :area, :stadium, :founded, :joined, :coach


    # Creates a new Team
    #
    # @param [Hash] data for team (name, area, stadium, founded, joined, coach, owner)
    # @return [Team] a new Team instance
    def initialize(*data)
    end


    # Show a human-readable output of the Team
    def to_s
      name
    end

  end

end
