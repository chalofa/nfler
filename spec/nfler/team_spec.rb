require 'spec_helper'

describe Nfler::Team do

  describe '#initialize' do
    subject { Nfler::Team.new(name: 'Foo', stadium: 'Bar') }

    it 'should use the given data' do
      subject.name.should == 'Foo'
      subject.stadium.should == 'Bar'
    end

    it 'should create an instance' do
      subject.should be_instance_of Nfler::Team
    end
  end

end
