require 'spec_helper'

describe Nfler::Teams do

  describe '#get' do
    context 'when table with data' do
      before do
        Nfler::Page.should_receive(:get).and_return read_test_file('teams_wikipedia.html')
      end

      it 'should return an array' do
        subject.get.should be_an_instance_of Array
      end

      it 'should include only the 32 teams' do
        subject.get.size.should == 32
      end

    end

    context 'when nothing' do
      before do
        Nfler::Page.should_receive(:get).and_return ''
      end

      it 'should return an empty array' do
        subject.get.should == []
      end
    end
  end

end
