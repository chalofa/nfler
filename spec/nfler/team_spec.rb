require 'spec_helper'

describe Nfler::Team do

  describe '#initialize' do
    it 'should create an instance' do
      Nfler::Team.new.should be_instance_of Nfler::Team
    end
  end

  describe '#to_s' do
    it 'should show a human readable text' do
      subject.should_receive(:name).and_return 'Team Name'
      subject.to_s.should == 'Team Name'
    end
  end

end
