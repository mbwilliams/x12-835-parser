require 'X221/per'

module X221
  describe Per do
    before do
      @raw_data = 'PER*CX*JOHN WAYNE*TE*8005551212~'
      @per = Per.new(@raw_data)
    end

    it "has a Segment ID value PER" do
      expect(@per.segment_id).to eq('PER')
    end

    it "has a segment name" do
      expect(@per.name).to eq('Administrative Communications Contact')
    end

    it "has a Contact Function Code" do
      expect(@per.contact_function_code).to eq('CX')
    end

    it "has a Contact Name" do
      expect(@per.contact_name).to eq('JOHN WAYNE')
    end

    it "has a Communication Number 1 Qualifier" do
      expect(@per.communication_number_1_qualifier).to eq('TE')
    end

    it "has a Communication Number 1" do
      expect(@per.communication_number_1).to eq('8005551212')
    end

    it "has a Communication Number 2 Qualifier" do
      expect(@per.communication_number_2_qualifier).to be_nil
    end

    it "has a Communication Number 2" do
      expect(@per.communication_number_2).to be_nil
    end

    it "has a Communication Number 3 Qualifier" do
      expect(@per.communication_number_3_qualifier).to be_nil
    end

    it "has a Communication Number 3" do
      expect(@per.communication_number_3).to be_nil
    end
  end
end
