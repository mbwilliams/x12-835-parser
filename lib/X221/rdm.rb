require_relative 'segment'

module X221
  class Rdm < Segment

    attr_reader :report_transmission_code,
                :contact_name,
                :communication_number

    def initialize(raw_data)
      super
      @report_transmission_code = @data_elements[1]
      @contact_name             = @data_elements[2]
      @communication_number     = @data_elements[3]
    end
  end
end
