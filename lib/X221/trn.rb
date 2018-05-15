require_relative 'segment'

module X221
  class Trn < Segment

    attr_reader :trace_type_code,
                :trace_number,
                :originating_company_identifier,
                :originating_company_supplemental_code

    def initialize(raw_data)
      super
      @trace_type_code                       = @data_elements[1]
      @trace_number                          = @data_elements[2]
      @originating_company_identifier        = @data_elements[3]
      @originating_company_supplemental_code = @data_elements[4]
    end
  end
end
