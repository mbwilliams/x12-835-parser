require_relative 'segment'

module X221
  class Lx < Segment

    attr_reader :assigned_line_number

    def initialize(raw_data)
      super
      @assigned_line_number = @data_elements[1]
    end
  end
end
