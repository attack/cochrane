require 'rspec'

SPEC_ROOT = File.dirname(__FILE__)
$:.unshift((File.join(SPEC_ROOT, '..', 'lib')))
require 'cochrane'
require 'pry'

RSpec.configure do |c|
  c.mock_with :rspec
end

def fit_file(name)
  File.join(SPEC_ROOT, 'fixtures', "#{name}.FIT")
end
