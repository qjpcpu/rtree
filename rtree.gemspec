# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rtree/version'

Gem::Specification.new do |spec|
  spec.name          = "rtree"
  spec.version       = Rtree::VERSION
  spec.authors       = ["qjpcpu"]
  spec.email         = ["qjpcpu@gmail.com"]
  spec.summary       = %q{Disply directory tree.}
  spec.description   = %q{Tree command in ruby.}
  spec.homepage      = "https://github.com/qjpcpu/rtree"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
