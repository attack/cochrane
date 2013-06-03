module Cochrane
  class Header
    attr_reader :size, :protocol_version, :profile_version, :data_size, :data_type, :extra

    def read(io)
      @size = io.read(1).unpack('C').first.to_i

      @protocol_version, @profile_version,
        @data_size, @data_type = io.read(11).unpack('CSIA4')

      if @size > 12
        diff = @size - 12
        @extra = io.read(diff).unpack("A#{diff}").first
      end

      self
    end
  end
end
