require_relative 'segment'

module X221
  class Qty < Segment

    attr_reader :quantity_qualifier,
                :claim_supplemental_information_quantity

    def initialize(raw_data)
      super
      @quantity_qualifier                      = @data_elements[1]
      @claim_supplemental_information_quantity = @data_elements[2]
    end
  end
end
