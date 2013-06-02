# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'cochrane/version'

Gem::Specification.new do |s|
  s.name        = 'cochrane'
  s.version     = Cochrane::VERSION
  s.authors     = ['Mark G']
  s.email       = ['cochrane@attackcorp.com']
  s.summary     = %q{A simple FIT file reader/writer}
  s.description = %q{A simple FIT file reader/writer}
  s.homepage    = 'http://github.com/attach/cochrane'

  s.files         = `git ls-files`.split('\n')
  s.test_files    = `git ls-files -- spec/*`.split('\n')
  s.executables   = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'rspec', '~> 2.8'
  s.add_development_dependency 'pry'
end
