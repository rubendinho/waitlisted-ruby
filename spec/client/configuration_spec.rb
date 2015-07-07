require 'spec_helper'

describe Waitlisted do
  context 'configuration' do
    before(:example) do
      Waitlisted.configure do |config|
        config.url = "http://test.local"
      end
    end
    it "should allow url to be set" do
      expect(Waitlisted.configuration.url).to eq("http://test.local")
    end
  end
end
