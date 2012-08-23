module Nfler::Importers

  module NflScores
    NFL_SCORES_URL = 'http://www.nfl.com/scores'

    class << self

      def fetch
        page = ::Nfler::Page.get NFL_SCORES_URL
      end

    end
  end

end
