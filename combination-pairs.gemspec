# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'combination/pairs/version'

Gem::Specification.new do |spec|
  spec.name          = "combination-pairs"
  spec.version       = Combination::Pairs::VERSION
  spec.authors       = ["Tarun"]
  spec.email         = ["t.garg28@gmail.com"]
  spec.description   = %q{K, N (where 0 < N < ∞, 0 < K < ∞, and K <= N)}
  spec.summary       = %q{Number of possible equations of K numbers whose sum is N}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
