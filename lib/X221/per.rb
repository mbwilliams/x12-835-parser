require_relative 'segment'

module X221
  class Per < Segment

    attr_reader :contact_function_code, :contact_name,
                :communication_number_1_qualifier,
                :communication_number_1,
                :communication_number_2_qualifier,
                :communication_number_2,
                :communication_number_3_qualifier,
                :communication_number_3

    def initialize(raw_data)
      super
      @contact_function_code            = @data_elements[1]
      @contact_name                     = @data_elements[2]
      @communication_number_1_qualifier = @data_elements[3]
      @communication_number_1           = @data_elements[4]
      @communication_number_2_qualifier = @data_elements[5]
      @communication_number_2           = @data_elements[6]
      @communication_number_2_qualifier = @data_elements[7]
      @communication_number_2           = @data_elements[8]
    end
  end
end
