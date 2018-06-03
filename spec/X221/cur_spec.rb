require 'X221/cur'

module X221
  describe Cur do
    before do
      tr3_example = 'CUR*PR*CAD~'
      @cur = Cur.new(tr3_example)
    end

    it "has a Segment ID value CUR" do
      expect(@cur.segment_id).to eq('CUR')
    end

    it "has a segment name" do
      expect(@cur.name).to eq('Currency')
    end

    it "has an Entity ID Code" do
      expect(@cur.entity_id_code).to eq('PR')
    end

    it "has a Currency Code" do
      expect(@cur.currency_code).to eq('CAD')
    end
  end
end
