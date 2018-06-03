require 'X221/interchange_envelope'
require 'X221/isa'
require 'X221/iea'

module X221
  describe InterchangeEnvelope do
    before do
      isa_data = "ISA*00*..........*01*SECRET....*ZZ*SUBMITTERS.ID..*ZZ* RECEIVERS.ID...*030101*1253*^*00501*000000905*1*T*:~"
      isa = Isa.new(isa_data)

      iea_data = "IEA*1*000000905~"
      iea = Iea.new(iea_data)

      @interchange_envelope = InterchangeEnvelope.new(isa, iea)
    end

    it "has an interchange control header" do
      expect(@interchange_envelope.isa).not_to be_nil
    end

    it "has an interchangr control trailer" do
      expect(@interchange_envelope.iea).not_to be_nil
    end

    it "has the same interchange control number in the header and trailer" do
      expect(@interchange_envelope.isa.interchange_control_number).to eq(@interchange_envelope.iea.interchange_control_number)
    end

    context "when interchange control number does not match" do
      before do
        bad_isa_data = "ISA*00*..........*01*SECRET....*ZZ*SUBMITTERS.ID..*ZZ* RECEIVERS.ID...*030101*1253*^*00501*000000905*1*T*:~"
        @bad_isa = Isa.new(bad_isa_data)

        bad_iea_data = "IEA*1*120000905~"
        @bad_iea = Iea.new(bad_iea_data)
      end

      it "Raises an error with message Mismatched Interchange Control Number" do
        expect { InterchangeEnvelope.new(@bad_isa, @bad_iea) }.to raise_error('Mismatched Interchange Control Number')
      end
    end
  end
end
