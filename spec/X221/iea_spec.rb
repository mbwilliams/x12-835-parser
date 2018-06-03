require 'X221/iea'

module X221
  describe Iea do
    before do
      tr3_example = "IEA*1*000000905~"
      @iea = Iea.new(tr3_example)
    end

    it "has a Segment ID value IEA" do
      expect(@iea.segment_id).to eq('IEA')
    end

    it "has a segment name" do
      expect(@iea.name).to eq('Interchange Control Trailer')
    end

    it "has the Number of Included Functional Groups" do
      expect(@iea.number_of_included_functional_groups).to eq('1')
    end

    it "has an Interchange Control Number" do
      expect(@iea.interchange_control_number).to eq('000000905')
    end
  end
end
