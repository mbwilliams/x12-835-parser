require 'X221/rdm'

module X221
  describe Rdm do
    before do
      tr3_example = 'RDM*BM*JACK BAUER*555123456789~'
      @rdm = Rdm.new(tr3_example)
    end

    it "has a Segment ID value RDM" do
      expect(@rdm.segment_id).to eq('RDM')
    end

    it "has a segment name" do
      expect(@rdm.name).to eq('Remittance Delivery Method')
    end

    it "has a Report Transmission Code" do
      expect(@rdm.report_transmission_code).to eq('BM')
    end

    it "has a Contact Name" do
      expect(@rdm.contact_name).to eq('JACK BAUER')
    end

    it "has a Communication Number" do
      expect(@rdm.communication_number).to eq('555123456789')
    end
  end
end
