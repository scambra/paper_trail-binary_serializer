# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paper_trail_binary_serializer/version'

Gem::Specification.new do |spec|
  spec.name          = "paper_trail-binary_serializer"
  spec.version       = PaperTrailBinarySerializer::VERSION
  spec.authors       = ["Sergio Cambra"]
  spec.email         = ["sergio@enpijama.es"]
  spec.summary       = "A PaperTrail serializer for binary columns using base64 encoding"
  spec.description   = "A PaperTrail serializer for binary columns using base64 encoding"
  spec.homepage      = "https://github.com/scambra/paper_trail-binary_serializer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'paper_trail', '~> 15.0'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake"
end