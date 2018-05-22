require 'X221/moa'

module X221
  describe Moa do
    before do
      @raw_data = 'MOA***MA01~'
      @moa = Moa.new(@raw_data)
    end

    it "has a Segment ID of value MOA" do
      expect(@moa.segment_id).to eq('MOA')
    end

    it "has a segment name" do
      expect(@moa.name).to eq('Medicare Outpatient Adjudication')
    end

    it "has a Reimbursement Rate" do
      expect(@moa.reimbursement_rate).to eq('')
    end

    it "has a Claim HCPCS Payable Amount" do
      expect(@moa.claim_hcpcs_payable_amount).to eq('')
    end

    it "has a Claim Payment Remark Codes" do
      expect(@moa.claim_payment_remark_code_1).to eq('MA01')
      expect(@moa.claim_payment_remark_code_2).to be_nil
      expect(@moa.claim_payment_remark_code_3).to be_nil
      expect(@moa.claim_payment_remark_code_4).to be_nil
      expect(@moa.claim_payment_remark_code_5).to be_nil
    end

    it "has a Claim ESRD Payment Amount" do
      expect(@moa.claim_esrd_payment_amount).to be_nil
    end

    it "has a Nonpayable Professional Component Amount" do
      expect(@moa.nonpayable_professional_component_amount).to be_nil
    end
  end
end
