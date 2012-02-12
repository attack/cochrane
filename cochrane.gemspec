# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cochrane/version"

Gem::Specification.new do |s|
  s.name        = "cochrane"
  s.version     = Cochrane::VERSION
  s.authors     = ["Mark"]
  s.email       = ["rtec88@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A simple FIT file parser}
  s.description = %q{A simple FIT file parser}

  s.rubyforge_project = "cochrane"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
