module X221
  class Mia < Segment

    attr_reader :covered_days_or_visits_count,
                :pps_operating_outlier_amount,
                :lifetime_psychiatric_days_count,
                :claim_drg_amount,
                :claim_payment_remark_code_1,
                :claim_disproportionate_share_amount,
                :claim_msp_pass_through_amount,
                :claim_pps_capital_amount,
                :pps_capital_fsp_drg_amount,
                :pps_capital_hsp_drg_amount,
                :pps_capital_dsh_drg_amount,
                :old_capital_amount,
                :pps_capital_ime_amount,
                :pps_operating_hospital_specific_drg_amount,
                :cost_report_day_count,
                :pps_operating_federal_specific_drg_amount,
                :claim_pps_capital_outlier_amount,
                :claim_indirect_teaching_amount,
                :nonpayable_professional_component_amount,
                :claim_payment_remark_code_2,
                :claim_payment_remark_code_3,
                :claim_payment_remark_code_4,
                :claim_payment_remark_code_5,
                :pps_capital_exception_amount

    def initialize(raw_data)
      super
      @covered_days_or_visits_count               = @data_elements[1]
      @pps_operating_outlier_amount               = @data_elements[2]
      @lifetime_psychiatric_days_count            = @data_elements[3]
      @claim_drg_amount                           = @data_elements[4]
      @claim_payment_remark_code_1                = @data_elements[5]
      @claim_disproportionate_share_amount        = @data_elements[6]
      @claim_msp_pass_through_amount              = @data_elements[7]
      @claim_pps_capital_amount                   = @data_elements[8]
      @pps_capital_fsp_drg_amount                 = @data_elements[9]
      @pps_capital_hsp_drg_amount                 = @data_elements[10]
      @pps_capital_dsh_drg_amount                 = @data_elements[11]
      @old_capital_amount                         = @data_elements[12]
      @pps_capital_ime_amount                     = @data_elements[13]
      @pps_operating_hospital_specific_drg_amount = @data_elements[14]
      @cost_report_day_count                      = @data_elements[15]
      @pps_operating_federal_specific_drg_amount  = @data_elements[16]
      @claim_pps_capital_outlier_amount           = @data_elements[17]
      @claim_indirect_teaching_amount             = @data_elements[18]
      @nonpayable_professional_component_amount   = @data_elements[19]
      @claim_payment_remark_code_2                = @data_elements[20]
      @claim_payment_remark_code_3                = @data_elements[21]
      @claim_payment_remark_code_4                = @data_elements[22]
      @claim_payment_remark_code_5                = @data_elements[23]
      @pps_capital_exception_amount               = @data_elements[24]
    end
  end
end
