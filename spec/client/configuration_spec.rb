require 'spec_helper'

describe Waitlisted do
  context 'block configuration' do
    before(:example) do
      Waitlisted.configure do |config|
        config.url = "http://test.local"
      end
    end
    after(:example) do
      Waitlisted.configure do |config|
        config.url = nil
      end
    end
    it "should allow url to be set" do
      expect(Waitlisted.configuration.url).to eq("http://test.local")
    end
  end
  context 'env configuration' do
    before(:example) do
      ENV['WAITLISTED_URL'] = 'https://test.local'
      Waitlisted.reset
    end
    after(:example) do
      ENV['WAITLISTED_URL'] = ''
      Waitlisted.reset
    end
    it "should allow url to be set" do
      expect(Waitlisted.configuration.url).to eq("https://test.local")
    end
  end
end
