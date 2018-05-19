require_relative 'segment'

module X221
  class Ts3 < Segment

    attr_reader :reference_identifier, :facility_type_code,
                :fiscal_period_date,
                :total_claim_count, :total_claim_charge_amount

    def initialize(raw_data)
      super
      @reference_identifier      = @data_elements[1]
      @facility_type_code        = @data_elements[2]
      @fiscal_period_date        = @data_elements[3]
      @total_claim_count         = @data_elements[4]
      @total_claim_charge_amount = @data_elements[5]
    end
  end
end
