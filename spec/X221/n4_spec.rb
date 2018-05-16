require 'X221/n4'

module X221
  describe N4 do
    before do
      @raw_data = 'N4*Toronto*Ontario*64108*CAD*YYY~'
      @n4 = N4.new(@raw_data)
    end

    it "has a Segment ID value N4" do
      expect(@n4.segment_id).to eq('N4')
    end

    it "has a segment name" do
      expect(@n4.name).to eq('Geographic Location')
    end

    it "has a City Name" do
      expect(@n4.city_name).to eq('Toronto')
    end

    it "has a State or Province Code" do
      expect(@n4.state_or_province_code).to eq('Ontario')
    end

    it "has a Postal Code" do
      expect(@n4.postal_code).to eq('64108')
    end

    it "has a Country Code" do
      expect(@n4.country_code).to eq('CAD')
    end

    it "has a Country Subdivision Code" do
      expect(@n4.country_subdivision_code).to eq('YYY')
    end

    context "with no country information" do
      before do
        @raw_data = 'N4*KANSAS CITY*MO*64108~'
        @n4 = N4.new(@raw_data)
      end

      it "has no Country Code" do
        expect(@n4.country_code).to be_nil
      end

      it "has no Country Subdivision Code" do
        expect(@n4.country_subdivision_code).to be_nil
      end
    end
  end
end
