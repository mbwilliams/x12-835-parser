require 'X221/mia'

module X221
  describe Mia do
    before do
      tr3_example = 'MIA*0***138018.4~'
      @mia = Mia.new(tr3_example)
    end

    it "has a Segment ID of value MIA" do
      expect(@mia.segment_id).to eq('MIA')
    end

    it "has a segment name" do
      expect(@mia.name).to eq('Medicare Inpatient Adjudication')
    end

    it "has a Claim Covered Days or Visits Count" do
      expect(@mia.covered_days_or_visits_count).to eq('0')
    end

    it "has a PPS Operating Outlier Amount" do
      expect(@mia.pps_operating_outlier_amount).to eq('')
    end

    it "has a Lifetime Psychiatric Days Count" do
      expect(@mia.lifetime_psychiatric_days_count).to eq('')
    end

    it "has a Claim DRG Amount" do
      expect(@mia.claim_drg_amount).to eq('138018.4')
    end

    it "has a Claim Payment Remark Code" do
      expect(@mia.claim_payment_remark_code_1).to be_nil
    end

    it "has a Claim Disproportionate Share Amount" do
      expect(@mia.claim_disproportionate_share_amount).to be_nil
    end

    it "has a Claim MSP Pass-through Amount" do
      expect(@mia.claim_msp_pass_through_amount).to be_nil
    end

    it "has a Claim PPS Capital Amount" do
      expect(@mia.claim_pps_capital_amount).to be_nil
    end

    it "has a PPS-Capital FSP DRG Amount" do
      expect(@mia.pps_capital_fsp_drg_amount).to be_nil
    end

    it "has a PPS-Capital HSP DRG Amount" do
      expect(@mia.pps_capital_hsp_drg_amount).to be_nil
    end

    it "has a PPS-Capital DSH DRG Amount" do
      expect(@mia.pps_capital_dsh_drg_amount).to be_nil
    end

    it "has an Old Capital Amount" do
      expect(@mia.old_capital_amount).to be_nil
    end

    it "has a PPS-Capital IME amount" do
      expect(@mia.pps_capital_ime_amount).to be_nil
    end

    it "has a PPS-Operating Hospital Specific DRG Amount" do
      expect(@mia.pps_operating_hospital_specific_drg_amount).to be_nil
    end

    it "has a Cost Report Day Count" do
      expect(@mia.cost_report_day_count).to be_nil
    end

    it "has a PPS-Operating Federal Specific DRG Amount" do
      expect(@mia.pps_operating_federal_specific_drg_amount).to be_nil
    end

    it "has a Claim PPS Capital Outlier Amount" do
      expect(@mia.claim_pps_capital_outlier_amount).to be_nil
    end

    it "has a Claim Indirect Teaching Amount" do
      expect(@mia.claim_indirect_teaching_amount).to be_nil
    end

    it "has a Nonpayable Professional Component Amount" do
      expect(@mia.nonpayable_professional_component_amount).to be_nil
    end

    it "has a other Claim Payment Remark Codes" do
      expect(@mia.claim_payment_remark_code_2).to be_nil
      expect(@mia.claim_payment_remark_code_3).to be_nil
      expect(@mia.claim_payment_remark_code_4).to be_nil
      expect(@mia.claim_payment_remark_code_5).to be_nil
    end

    it "has a PPS-Capital Exception Amount" do
      expect(@mia.pps_capital_exception_amount).to be_nil
    end
  end
end
