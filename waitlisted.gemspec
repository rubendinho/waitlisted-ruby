# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'waitlisted/version'

Gem::Specification.new do |spec|
  spec.name          = "waitlisted"
  spec.version       = Waitlisted::VERSION
  spec.authors       = ["Justin McNally"]
  spec.email         = ["justin@waitlisted.co"]

  spec.summary       = %q{Use the waitlisted api from ruby}
  spec.description   = %q{Easily integrate the waitlisted api from ruby.}
  spec.homepage      = "https://waitlisted.co"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_dependency "faraday"
  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
end
