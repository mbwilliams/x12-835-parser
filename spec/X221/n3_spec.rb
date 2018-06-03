require 'X221/n3'

module X221
  describe N3 do
    before do
      tr3_example = 'N3*100 MAIN STREET*SUITE 16~'
      @n3 = N3.new(tr3_example)
    end

    it "has a Segment ID value N3" do
      expect(@n3.segment_id).to eq('N3')
    end

    it "has a segment name" do
      expect(@n3.name).to eq('Party Location')
    end

    it "has an Address Line 1" do
      expect(@n3.address_line_1).to eq('100 MAIN STREET')
    end

    it "has an Address Line 2" do
      expect(@n3.address_line_2).to eq('SUITE 16')
    end

    context "with no Address Line 2" do
      it "has an empty Address Line 2" do
        raw_data = 'N3*100 MAIN STREET~'
        n3 = N3.new(raw_data)

        expect(n3.address_line_2).to be_nil
      end
    end
  end
end
