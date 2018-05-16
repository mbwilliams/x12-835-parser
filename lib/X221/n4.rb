require_relative 'segment'

module X221
  class N4 < Segment

    attr_reader :city_name, :state_or_province_code, :postal_code,
                :country_code, :country_subdivision_code

    def initialize(raw_data)
      super
      @city_name                = @data_elements[1]
      @state_or_province_code   = @data_elements[2]
      @postal_code              = @data_elements[3]
      @country_code             = @data_elements[4]
      @country_subdivision_code = @data_elements[5]
    end
  end
end
