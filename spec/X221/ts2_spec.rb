require 'X221/ts2'

module X221
  describe Ts2 do
    before do
      tr3_example = 'TS2*59786*55375.77~'
      @ts2 = Ts2.new(tr3_example)
    end

    it "has a Segment ID value TS2" do
      expect(@ts2.segment_id).to eq('TS2')
    end

    it "has a segment name" do
      expect(@ts2.name).to eq('Transaction Supplemental Statistics')
    end

    it "has a Total DRG Amount" do
      expect(@ts2.total_drg_amount).to eq('59786')
    end

    it "has a Total Federal Specific Amount" do
      expect(@ts2.total_federal_specific_amount).to eq('55375.77')
    end
  end
end
