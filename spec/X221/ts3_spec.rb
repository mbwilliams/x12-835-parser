require 'X221/ts3'

module X221
  describe Ts3 do
    before do
      tr3_example = 'TS3*123456*11*20021031*10*130957.66~'
      @ts3 = Ts3.new(tr3_example)
    end

    it "has a Segment ID value TS3" do
      expect(@ts3.segment_id).to eq('TS3')
    end

    it "has a segment name" do
      expect(@ts3.name).to eq('Transaction Statistics')
    end

    it "has a Reference Identifier" do
      expect(@ts3.reference_identifier).to eq('123456')
    end

    it "has a Facility Type Code" do
      expect(@ts3.facility_type_code).to eq('11')
    end

    it "has a Total Claim Count" do
      expect(@ts3.total_claim_count).to eq('10')
    end

    it "has a Total Claim Charge Amount" do
      expect(@ts3.total_claim_charge_amount).to eq('130957.66')
    end

    it "has a Fiscal Period Date in format CCYYMMDD" do
      expect(@ts3.fiscal_period_date).to eq('20021031')

      # The following are not yet enforced and should raise an error
      expect(@ts3.fiscal_period_date.length).to eq(8)
      expect(@ts3.fiscal_period_date[0..3].to_i).to be_between(0, 9999).inclusive
      expect(@ts3.fiscal_period_date[4..5].to_i).to be_between(1, 12).inclusive
      expect(@ts3.fiscal_period_date[6..7].to_i).to be_between(1, 31).inclusive #Could tighten this up using a days per month hash
    end
  end
end
