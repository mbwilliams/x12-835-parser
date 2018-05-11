require 'X221/ge'

module X221
  describe Ge do
    before do
      @raw_data = "GE*1*1~"
      @ge = Ge.new(@raw_data)
    end

    it "has a Segment ID value GE" do
      expect(@ge.segment_id).to eq('GE')
    end

    it "has a segment name" do
      expect(@ge.name).to eq('Functional Group Trailer')
    end

    it "has the Number of Transaction Sets Included" do
      expect(@ge.number_of_transaction_sets_included).to eq('1')
    end

    it "has a Group Control Number" do
      expect(@ge.group_control_number).to eq('1')
    end
  end
end
