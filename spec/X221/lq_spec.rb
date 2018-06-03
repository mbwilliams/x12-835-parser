require 'X221/lq'

module X221
  describe Lq do
    before do
      tr3_example = 'LQ*HE*12345~'
      @lq = Lq.new(tr3_example)
    end

    it "has a Segment ID of value LQ" do
      expect(@lq.segment_id).to eq('LQ')
    end

    it "has a segment name" do
      expect(@lq.name).to eq('Industry Code Identification')
    end

    it "has a Code List Qualifier Code" do
      expect(@lq.code_list_qualifier_code).to eq('HE')
    end

    it "has a Remark Code" do
      expect(@lq.remark_code).to eq('12345')
    end
  end
end
