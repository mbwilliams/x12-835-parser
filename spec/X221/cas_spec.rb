require 'X221/cas'

module X221
  describe Cas do
    before do
      tr3_example = 'CAS*PR*1*793**3*25~'
      @cas = Cas.new(tr3_example)
    end

    it "has a Segment ID of value CAS" do
      expect(@cas.segment_id).to eq('CAS')
    end

    it "has a segment name" do
      expect(@cas.name).to eq('Claims Adjustment')
    end

    it "has a Claim Adjustment Group code" do
      expect(@cas.claim_adjustment_group_code).to eq('PR')
    end

    it "has upto 6 Claim Adjustment Reason codes" do
      expect(@cas.claim_adjustment_reason_code_1).to eq('1')
      expect(@cas.claim_adjustment_reason_code_2).to eq('3')
      expect(@cas.claim_adjustment_reason_code_3).to be_nil
      expect(@cas.claim_adjustment_reason_code_4).to be_nil
      expect(@cas.claim_adjustment_reason_code_5).to be_nil
      expect(@cas.claim_adjustment_reason_code_6).to be_nil
    end

    it "has upto 6 Adjustment Amounts" do
      expect(@cas.adjustment_amount_1).to eq('793')
      expect(@cas.adjustment_amount_2).to eq('25')
      expect(@cas.adjustment_amount_3).to be_nil
      expect(@cas.adjustment_amount_4).to be_nil
      expect(@cas.adjustment_amount_5).to be_nil
      expect(@cas.adjustment_amount_6).to be_nil
    end

    it "has upto 6 Adjustment Quantities" do
      expect(@cas.adjustment_quantity_1).to eq('')
      expect(@cas.adjustment_quantity_2).to be_nil
      expect(@cas.adjustment_quantity_3).to be_nil
      expect(@cas.adjustment_quantity_4).to be_nil
      expect(@cas.adjustment_quantity_5).to be_nil
      expect(@cas.adjustment_quantity_6).to be_nil
    end
  end
end
