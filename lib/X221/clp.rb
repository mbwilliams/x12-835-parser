module X221
  class Clp < Segment
    attr_reader :claim_submitter_identifier,
                :claim_status_code,
                :total_claim_charge_amount,
                :claim_payment_amount,
                :patient_responsibility_amount,
                :claim_filing_indicator_code,
                :payer_claim_control_number

    def initialize(raw_data)
      super
      @claim_submitter_identifier    = @data_elements[1]
      @claim_status_code             = @data_elements[2]
      @total_claim_charge_amount     = @data_elements[3]
      @claim_payment_amount          = @data_elements[4]
      @patient_responsibility_amount = @data_elements[5]
      @claim_filing_indicator_code   = @data_elements[6]
      @payer_claim_control_number    = @data_elements[7]
    end
  end
end
