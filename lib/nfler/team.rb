module Nfler

  # Each of the Teams in the NFL
  class Team
    attr_accessor :name, :short, :conference, :division, :city, :stadium, :founded, :coach, :owner

    # Creates a new Team
    #
    # @param [Hash] data for team (name, short, area, stadium, founded, joined, coach, owner)
    # @return [Team] a new Team instance
    def initialize(data = {})
      extract_data data
    end


    private

    def extract_data(data = {}) #nodoc
      [:name, :short, :conference, :division, :city, :stadium, :founded, :coach, :owner].each do |attribute|
        send("#{attribute}=", data[attribute])
      end
    end

  end

end
