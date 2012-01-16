# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nfler/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Chalo Fernandez']
  gem.email         = ['chalofa@gmail.com']
  gem.description   = %q{NFL Ruby parsing library to get league data, teams, scores and more...}
  gem.summary       = %q{NFLer gets data from official sources about the NFL league, teams, games and scores}
  gem.homepage      = 'http://github.com/chalofa/nfler'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'nfler'
  gem.require_paths = %w(lib)
  gem.version       = Nfler::VERSION

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'fuubar'
end
