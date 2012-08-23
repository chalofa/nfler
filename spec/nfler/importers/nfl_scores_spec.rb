require 'spec_helper'

module Nfler::Importers

  describe NflScores do

    describe '.fetch' do
      it 'should download the page' do
        ::Nfler::Page.should_receive(:get).with 'http://www.nfl.com/scores'
        NflScores.fetch
      end

      it 'should parse games'
    end

  end

end
