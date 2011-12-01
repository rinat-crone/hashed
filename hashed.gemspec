# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hashed/version"

Gem::Specification.new do |s|
  s.name        = "hashed"
  s.version     = Hashed::VERSION
  s.authors     = ["Rinat Shaykhutdinov"]
  s.email       = ["rinat.crone@gmail.com"]
  s.homepage    = "https://github.com/rinat-crone/hashed"
  s.summary     = %q{Makes hash from AR dataset}
  s.description = %q{Provides `hashed` method to ActiveRecord dataset, that return hash where keys is value of some attribute of object (default – primary key of used table).}

  s.rubyforge_project = "hashed"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_development_dependency "sqlite3-ruby"
  s.add_dependency "activerecord", "~> 3.0"
end
