# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'framework7/rails/version'
require 'framework7'

Gem::Specification.new do |spec|
  spec.name          = "framework7-rails"
  spec.version       = Framework7::Rails::VERSION
  spec.authors       = ["Terry Wilson"]
  spec.email         = ["terry.wilson@twss.co.uk"]
  spec.summary       = %q{Framework7 for Rails 3.1+ Asset Pipeline.}
  spec.description   = %q{Adds support for Framework7 to the Asset Pipeline.}
  spec.homepage      = "https://github.com/twss/framework7-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  # spec.files         = `git ls-files --stage`.gsub(/^([0-9]{6}\s[0-9a-f]*\s[0-9]\s)/, '').split("\n")   # For development
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "> 3.1"
  spec.add_dependency "coffee-script", "> 2.1"
  spec.add_dependency "coffee-rails", "> 3.2.1"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_development_dependency "rspec"
end
