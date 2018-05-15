require 'X221/trn'

module X221
  describe Trn do
    before do
      @raw_data = 'TRN*1*12345*1512345678*999999999~'
      @trn = Trn.new(@raw_data)
    end

    it "has a Segment ID value TRN" do
      expect(@trn.segment_id).to eq('TRN')
    end

    it "has a segment name" do
      expect(@trn.name).to eq('Trace')
    end

    it "has a Trace Type Code" do
      expect(@trn.trace_type_code).to eq('1')
    end

    it "has a Trace Number" do
      expect(@trn.trace_number).to eq('12345')
    end

    it "has an Originating Company Identifier" do
      expect(@trn.originating_company_identifier).to eq('1512345678')
    end

    it "has an Originating Company Supplemental Code" do
      expect(@trn.originating_company_supplemental_code).to eq('999999999')
    end
  end
end
