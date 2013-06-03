require 'cochrane/header'

module Cochrane
  class Base
    attr_reader :header

    def initialize(file_name)
      @file_name = file_name
      read_header
    end

    private

    def read_header
      @header = Header.new
      File.open(@file_name, "rb") do |file|
        @header.read(file)
      end
    end
  end
end
