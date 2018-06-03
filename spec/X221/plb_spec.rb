require 'X221/plb'

module X221
  describe Plb do
    before do
      tr3_example = 'PLB*1234567890*20000930*CV:9876514*-1.27~'
      @plb = Plb.new(tr3_example)
    end

    it "has a Segment ID of value PLB" do
      expect(@plb.segment_id).to eq('PLB')
    end

    it "has a segment name" do
      expect(@plb.name).to eq('Provider Level Adjustment')
    end

    it "has a Provider Identifier" do
      expect(@plb.provider_identifier).to eq('1234567890')
    end

    it "has a Fiscal Period Date in format CCYYMMDD" do
      expect(@plb.fiscal_period_date).to eq('20000930')

      # The following are not yet enforced and should raise an error
      expect(@plb.fiscal_period_date.length).to eq(8)
      expect(@plb.fiscal_period_date[0..3].to_i).to be_between(0, 9999).inclusive
      expect(@plb.fiscal_period_date[4..5].to_i).to be_between(1, 12).inclusive
      expect(@plb.fiscal_period_date[6..7].to_i).to be_between(1, 31).inclusive #Could tighten this up using a days per month hash
    end

    it "has an Adjustment Identifier" do
      expect(@plb.adjustment_identifier).to eq('CV:9876514')
    end

    it "has a Provider Adjustment Amount" do
      expect(@plb.provider_adjustment_amount).to eq('-1.27')
    end
  end
end
