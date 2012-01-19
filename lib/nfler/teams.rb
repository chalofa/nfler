require 'nokogiri'

module Nfler

  # NFL Teams
  module Teams
    class << self
      attr_accessor :teams

      # Fetches the Wikipedia NFL page and parse teams
      #
      # @return [Array] NFL active Teams collection
      def get
        page = Nfler::Page.get 'http://en.wikipedia.org/wiki/NFL'
        doc = Nokogiri.parse(page)
        parse_teams doc.css('table.navbox.wikitable tr')
      end


      private

      def parse_team(team_data, conference, division) #nodoc
        nodes = team_data.css('td')
        Team.new name: nodes[0], city: nodes[1]
      end

      def parse_teams(teams_data) #nodoc
        conference = division = nil
        @teams = teams_data.reduce([]) do |teams, node|
          teams << parse_team(node, conference, division)
        end
      end

    end
  end

end
