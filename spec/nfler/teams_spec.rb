require 'spec_helper'

describe Nfler::Teams do
  let(:team_data) { mock Nokogiri::XML::Node }
  let(:node) { mock Nokogiri::XML::Node, text: 'TEXT' }

  describe '#get' do
    before do
      Nfler::Page.should_receive(:get).and_return 'foo'
      doc = mock Nokogiri
      Nokogiri.should_receive(:parse).and_return doc
      doc.should_receive(:css)
    end

    it 'should parse the Wikipedia NFL teams table' do
      subject.should_receive(:parse_teams)
      subject.get
    end
  end

  describe '#parse_team' do
    let(:nodes) { 7.times { node } }

    it 'should extract team data' do
      subject.send(:parse_team, nodes, 'Conference', 'Division').should_not be_nil
    end
  end

  describe '#parse_teams' do
    context 'when nothing' do
      it 'should return an empty array' do
        subject.send(:parse_teams, []).should be_empty
      end
    end

    context 'when data' do
      let(:header) { mock Nokogiri::XML::Node }
      let(:teams_data) { [header, team_data] }
      before do
        header.should_receive(:css).and_return []
        team_data.should_receive(:css).and_return []
        #subject.should_receive(:parse_team) #<-TODO remove this
      end

      it 'should return an array' do
        subject.send(:parse_teams, teams_data).should be_instance_of Array
      end
    end
  end

end
