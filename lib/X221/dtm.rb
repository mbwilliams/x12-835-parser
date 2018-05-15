require_relative 'segment'

module X221
  class Dtm < Segment

    attr_reader :date_time_qualifier, :date

    def initialize(raw_data)
      super
      @date_time_qualifier = @data_elements[1]
      @date                = @data_elements[2]
    end
  end
end
