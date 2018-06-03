require 'X221/lx'

module X221
  describe Lx do
    before do
      tr3_example = 'LX*110210~'
      @lx = Lx.new(tr3_example)
    end

    it "has a Segment ID value LX" do
      expect(@lx.segment_id).to eq('LX')
    end

    it "has a segment name" do
      expect(@lx.name).to eq('Transaction Set Line Number')
    end

    it "has an Assigned Line Number" do
      expect(@lx.assigned_line_number).to eq('110210')
    end
  end
end
