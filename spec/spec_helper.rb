$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'waitlisted'
require 'webmock/rspec'
require 'vcr'

WebMock.disable_net_connect!

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
end
