require 'X221/n1'

module X221
  describe N1 do
    before do
      tr3_example = 'N1*PR*INSURANCE COMP ANY OF TIMBUCKTU*XV*8888888888~'
      @n1 = N1.new(tr3_example)
    end

    it "has a Segment ID value N1" do
      expect(@n1.segment_id).to eq('N1')
    end

    it "has a segment name" do
      expect(@n1.name).to eq('Party Identification')
    end

    it "has an Entity ID Code" do
      expect(@n1.entity_id_code).to eq('PR')
    end

    it "has an Entity Name" do
      expect(@n1.entity_name).to eq('INSURANCE COMP ANY OF TIMBUCKTU')
    end

    it "has an Identification Code Qualifier" do
      expect(@n1.identification_code_qualifier).to eq('XV')
    end

    it "has an Identification Code" do
      expect(@n1.identification_code).to eq('8888888888')
    end
  end
end
