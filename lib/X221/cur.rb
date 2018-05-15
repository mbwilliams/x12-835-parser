require_relative 'segment'

module X221
  class Cur < Segment

    attr_reader :entity_id_code, :currency_code

    def initialize(raw_data)
      super
      @entity_id_code = @data_elements[1]
      @currency_code  = @data_elements[2]
    end
  end
end
