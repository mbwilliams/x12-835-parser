require_relative 'segment'

module X221
  class Se < Segment

    attr_reader :number_of_included_segments,
                :transaction_set_control_number

    def initialize(raw_data)
      super
      @number_of_included_segments    = @data_elements[1]
      @transaction_set_control_number = @data_elements[2]
    end
  end
end
