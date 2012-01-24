require 'spec_helper'

describe Nfler::Teams do
  subject { Nfler::Teams.get }
  before do
    Nfler::Page.stub! get: read_test_file('teams_wikipedia.html')
  end

  describe '#get' do
    it 'should have Team instances inside' do
      subject.first.should be_an_instance_of Nfler::Team
    end
  end

end
