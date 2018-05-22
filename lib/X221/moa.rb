module X221
  class Moa < Segment

    attr_reader :reimbursement_rate,
                :claim_hcpcs_payable_amount,
                :claim_payment_remark_code_1,
                :claim_payment_remark_code_2,
                :claim_payment_remark_code_3,
                :claim_payment_remark_code_4,
                :claim_payment_remark_code_5,
                :claim_esrd_payment_amount,
                :nonpayable_professional_component_amount

    def initialize(raw_data)
      super
      @reimbursement_rate                       = @data_elements[1]
      @claim_hcpcs_payable_amount               = @data_elements[2]
      @claim_payment_remark_code_1              = @data_elements[3]
      @claim_payment_remark_code_2              = @data_elements[4]
      @claim_payment_remark_code_3              = @data_elements[5]
      @claim_payment_remark_code_4              = @data_elements[6]
      @claim_payment_remark_code_5              = @data_elements[7]
      @claim_esrd_payment_amount                = @data_elements[8]
      @nonpayable_professional_component_amount = @data_elements[9]
    end
  end
end
