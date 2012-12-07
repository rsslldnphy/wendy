# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["Russell Dunphy"]
  gem.email         = ["russell@rsslldnphy.com"]
  gem.description   = %q{Provides a nice way of chaining methods.}
  gem.summary       = gem.description
  gem.homepage      = "http://github.com/rsslldnphy/wendy"

  gem.add_development_dependency 'rspec'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "wendy"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"
end
