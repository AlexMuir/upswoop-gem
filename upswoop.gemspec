# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'upswoop/version'

Gem::Specification.new do |spec|
  spec.name          = "upswoop"
  spec.version       = Upswoop::VERSION
  spec.authors       = ["Alex Muir"]
  spec.email         = ["me@alexmuir.com"]

  spec.summary       = %q{An activity feed for your business.}
  spec.description   = %q{See everything that's happening in your business.}
  spec.homepage      = "http://www.upswoop.com"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
