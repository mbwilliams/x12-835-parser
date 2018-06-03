require 'X221/ref'

module X221
  describe Ref do
    before do
      tr3_example = 'REF*EV*1235678~'
      @ref = Ref.new(tr3_example)
    end

    it "has a Segment ID value REF" do
      expect(@ref.segment_id).to eq('REF')
    end

    it "has a segment name" do
      expect(@ref.name).to eq('Reference Information')
    end

    it "has a Reference Identification Qualifier" do
      expect(@ref.reference_identification_qualifier).to eq('EV')
    end

    it "has a Reference Identification" do
      expect(@ref.reference_identification).to eq('1235678')
    end
  end
end
