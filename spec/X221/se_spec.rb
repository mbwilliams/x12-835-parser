require 'X221/se'

module X221
  describe Se do
    before do
      @raw_data = "SE*45*1234~"
      @se = Se.new(@raw_data)
    end

    it "has a Segment ID value SE" do
      expect(@se.segment_id).to eq('SE')
    end

    it "has a segment name" do
      expect(@se.name).to eq('Transaction Set Trailer')
    end

    it "has the Number of Included Segments" do
      expect(@se.number_of_included_segments).to eq('45')
    end

    it "has a Transaction Set Control Number" do
      expect(@se.transaction_set_control_number).to eq('1234')
    end
  end
end
