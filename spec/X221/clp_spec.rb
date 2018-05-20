require 'X221/clp'

module X221
  describe Clp do
    before do
      @raw_data = 'CLP*7722337*1*211366.97*138018.4**12*119932404007801~'
      @clp = Clp.new(@raw_data)
    end

    it "has a Segment ID of value CLP" do
      expect(@clp.segment_id).to eq('CLP')
    end

    it "has a segment name" do
      expect(@clp.name).to eq('Claim Level Data')
    end

    it "has a Claim Submitter Identifier" do
      expect(@clp.claim_submitter_identifier).to eq('7722337')
    end

    it "has a Claim Status Code" do
      expect(@clp.claim_status_code).to eq('1')
    end

    it "has a Total Claim Charge Amount" do
      expect(@clp.total_claim_charge_amount).to eq('211366.97')
    end

    it "has a Claim Payment Amount" do
      expect(@clp.claim_payment_amount).to eq('138018.4')
    end

    it "has a Patient Responsibility Amount" do
      expect(@clp.patient_responsibility_amount).to eq('')
    end

    it "has a Claim Filing Indicator Code" do
      expect(@clp.claim_filing_indicator_code).to eq('12')
    end

    it "has a Payer Claim Control Number" do
      expect(@clp.payer_claim_control_number).to eq('119932404007801')
    end
  end
end
