require 'open-uri'
require 'spec_helper'

describe Nfler::Page do
  context 'when OK' do
    before do
      file = true
      OpenURI.should_receive(:open_uri).with('http://google.com').and_return file
      file.should_receive(:read).and_return 'PAGE'
    end

    it 'should return the page source' do
      subject.get('http://google.com').should == 'PAGE'
    end
  end

  context 'when error' do
    before do
      OpenURI.should_receive(:open_uri).with('http://my.uri')
    end

    it 'should return nil' do
      subject.get('http://my.uri').should be_nil
    end
  end

end
