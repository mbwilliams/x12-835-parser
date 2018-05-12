require_relative 'segment'

module X221
  class St < Segment

    attr_reader :transaction_set_identifier_code,
                :transaction_set_control_number

    def initialize(raw_data)
      super
      @transaction_set_identifier_code = @data_elements[1]
      @transaction_set_control_number  = @data_elements[2]
    end
  end
end
