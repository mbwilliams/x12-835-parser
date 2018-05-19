require_relative 'segment'

module X221
  class Ts2 < Segment

    attr_reader :total_drg_amount, :total_federal_specific_amount

    def initialize(raw_data)
      super
      @total_drg_amount              = @data_elements[1]
      @total_federal_specific_amount = @data_elements[2]
    end
  end
end
