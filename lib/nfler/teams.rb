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
        nodes = remove_notes(team_data)

        Team.new name: nodes[0], conference: conference, division: division,
              city: nodes[1], stadium: nodes[2], founded: nodes[3], joined: nodes[4],
              coach: nodes[5], owner: nodes[6]
      end

      def parse_teams(teams_data) #nodoc
        @teams = teams_data.reduce([]) do |teams, node|
          team_data = nodes_data(node)
          teams << parse_team(team_data, @conference, @division) if team_data
          teams
        end
      end

      def nodes_data(team_data) #nodoc
        nodes = team_data.css('td')
        heads = team_data.css('th')
        if nodes.any?
          @division = heads.first.text if heads.any?
          nodes
        else
          @conference = short_conference(heads.first.text) if heads.size == 1
          false
        end
      end

      def remove_notes(nodes)
        nodes.collect do |node|
          node.text.gsub /(\s.|Vacant|\[\[\]\])$/, ''
        end
      end

      def short_conference(name) #nodoc
        name == 'American Football Conference' ? 'AFC' : 'NFC'
      end

    end
  end

end
