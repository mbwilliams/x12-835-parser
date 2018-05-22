require 'X221/qty'

module X221
  describe Qty do
    before do
      @raw_data = 'QTY*ZK*3~'
      @qty = Qty.new(@raw_data)
    end

    it "has a Segment ID of value QTY" do
      expect(@qty.segment_id).to eq('QTY')
    end

    it "has a segment name" do
      expect(@qty.name).to eq('Quantity Information')
    end

    it "has a Quantity Qualifier" do
      expect(@qty.quantity_qualifier).to eq('ZK')
    end

    it "has a Claim Supplemental Information Quantity" do
      expect(@qty.claim_supplemental_information_quantity).to eq('3')
    end
  end
end
