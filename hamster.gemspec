# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hamster/version'

Gem::Specification.new do |spec|
  spec.name          = "hamster"
  spec.version       = Hamster::VERSION
  spec.authors       = ["sllt"]
  spec.email         = ["shenlongml@gmail.com"]
  spec.summary       = %q{A Web framework. like rails.}
  spec.description   = %q{a simple web framework }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_runtime_dependency "rack"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "minitest"
  spec.add_runtime_dependency "erubis"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
