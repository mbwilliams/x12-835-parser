require_relative 'segment'

module X221
  class N1 < Segment

    attr_reader :entity_id_code, :entity_name,
                :identification_code_qualifier,
                :identification_code

    def initialize(raw_data)
      super
      @entity_id_code                = @data_elements[1]
      @entity_name                   = @data_elements[2]
      @identification_code_qualifier = @data_elements[3]
      @identification_code           = @data_elements[4]
    end
  end
end
