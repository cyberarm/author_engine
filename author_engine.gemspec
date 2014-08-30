# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'author_engine/version'

Gem::Specification.new do |spec|
  spec.name          = "author_engine"
  spec.version       = AuthorEngine::VERSION
  spec.authors       = ["Cyberarm"]
  spec.email         = ["matthewlikesrobots@gmail.com"]
  spec.summary       = "Ruby Game Engine for Making Platformers"
  spec.description   = %q{A game engine built on Gosu, and Chingu, designed for platformers.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "hashie"
  spec.add_dependency "multi_json"
  spec.add_dependency "publisher"
  spec.add_dependency "chingu", "~> 0.9rc9"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
