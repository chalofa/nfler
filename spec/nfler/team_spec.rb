require 'spec_helper'

describe Nfler::Team do
  describe '#new' do
    it 'should create an instance' do
      Nfler::Team.new.should be_instance_of Nfler::Team
    end
  end
end
