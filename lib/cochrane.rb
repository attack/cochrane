require 'cochrane/version'
require 'cochrane/base'

module Cochrane
  def self.new(file_name=nil)
    Cochrane::Base.new(file_name)
  end
end
