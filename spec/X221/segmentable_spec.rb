require 'X221/segmentable'

module X221
  describe Segmentable do

    before do
      @raw_data = "ISA\t\t*00*..........*01*SECRET....*ZZ*SUBMITTERS.\r\nID..*ZZ* RECEIVERS.ID...*030101*1253*^*00501*000000905*1*T*:~"
    end

    it "has a segment terminator constant" do
      expect(Segmentable::SEGMENT_TERMINATOR).to eq('~')
    end

    it "has a data element separator" do
      expect(Segmentable::ELEMENT_DELIMITER).to eq('*')
    end

    it "has the name of all segment types" do
      segment_keys = [
                      :isa, :iea, :gs, :ge, :st, :se, :bpr, :trn, :cur, :ref,
                      :dtm, :n1, :n3, :n4, :per,
                     ]
      expect(Segmentable::SEGMENT_NAMES.keys).to eq(segment_keys)
    end

    it "cleanses the raw data" do
      expect(Segmentable.cleanse_raw_data(@raw_data)).to eq("ISA*00*..........*01*SECRET....*ZZ*SUBMITTERS.ID..*ZZ* RECEIVERS.ID...*030101*1253*^*00501*000000905*1*T*:")
    end

    it "builds an array of data elements from the cleansed raw data" do
      data_elements = ["ISA", "00", "..........", "01", "SECRET....", "ZZ", "SUBMITTERS.ID..", "ZZ", " RECEIVERS.ID...", "030101", "1253", "^", "00501", "000000905", "1", "T", ":"]
      expect(Segmentable.build_data_elements(Segmentable.cleanse_raw_data(@raw_data))).to eq(data_elements)
    end
  end
end
