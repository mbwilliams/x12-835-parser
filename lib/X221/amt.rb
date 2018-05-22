require_relative 'segment'

module X221
  class Amt < Segment

    attr_reader :amount_qualifier_code,
                :claim_supplemental_information_amount

    def initialize(raw_data)
      super
      @amount_qualifier_code                 = @data_elements[1]
      @claim_supplemental_information_amount = @data_elements[2]
    end
  end
end
