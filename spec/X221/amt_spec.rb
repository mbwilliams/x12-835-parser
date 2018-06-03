require 'X221/amt'

module X221
  describe Amt do
    before do
      tr3_example = 'AMT*T*49~'
      @amt = Amt.new(tr3_example)
    end

    it "has a Segment ID of value AMT" do
      expect(@amt.segment_id).to eq('AMT')
    end

    it "has a segment name" do
      expect(@amt.name).to eq('Monetary Amount Information')
    end

    it "has an Amount Qualifier Code" do
      expect(@amt.amount_qualifier_code).to eq('T')
    end

    it "has a Claim Supplemental Information Amount" do
      expect(@amt.claim_supplemental_information_amount).to eq('49')
    end
  end
end
