require_relative 'segment'

module X221
  class N3 < Segment

    attr_reader :address_line_1, :address_line_2

    def initialize(raw_data)
      super
      @address_line_1 = @data_elements[1]
      @address_line_2 = @data_elements[2]
    end
  end
end
