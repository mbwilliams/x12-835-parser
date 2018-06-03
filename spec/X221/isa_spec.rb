require 'X221/isa'

module X221
  describe Isa do
    before do
      tr3_example = "ISA*00*..........*01*SECRET....*ZZ*SUBMITTERS.ID..*ZZ* RECEIVERS.ID...*030101*1253*^*00501*000000905*1*T*:~"
      @isa = Isa.new(tr3_example)
    end

    it "has Segment ID value ISA" do
      expect(@isa.segment_id).to eq('ISA')
    end

    it "has a segment name" do
      expect(@isa.name).to eq('Interchange Control Header')
    end

    it "has an Authorization Information Qualifier" do
      expect(@isa.authorization_information_qualifier).to eq('00')
    end

    it "has Authorization Information" do
      expect(@isa.authorization_information).to eq('..........')
    end

    it "has a Security Information Qualifier" do
      expect(@isa.security_information_qualifier).to eq('01')
    end

    it "has Security Information" do
      expect(@isa.security_information).to eq('SECRET....')
    end

    it "has an Interchange Sender ID Qualifier" do
      expect(@isa.interchange_sender_id_qualifier).to eq('ZZ')
    end

    it "has an Interchange Sender ID" do
      expect(@isa.interchange_sender_id).to eq('SUBMITTERS.ID..')
    end

    it "has an Interchange Receiver ID Qualifier" do
      expect(@isa.interchange_receiver_id_qualifier).to eq('ZZ')
    end

    it "has an Interchange Receiver ID" do
      expect(@isa.interchange_receiver_id).to eq(' RECEIVERS.ID...')
    end

    it "has an Interchange Date with format YYMMDD" do
      expect(@isa.interchange_date).to eq('030101')

      # The following are not yet enforced and should raise an error
      expect(@isa.interchange_date.length).to eq(6)
      expect(@isa.interchange_date[0..1].to_i).to be_between(0, 99).inclusive
      expect(@isa.interchange_date[2..3].to_i).to be_between(1, 12).inclusive
      expect(@isa.interchange_date[4..5].to_i).to be_between(1, 31).inclusive #Could tighten this up using a days per month hash
    end

    it "has an Interchange Time with format HHMM" do
      expect(@isa.interchange_time).to eq('1253')

      # The following are not yet enforced and should raise an error
      expect(@isa.interchange_time.length).to eq(4)
      expect(@isa.interchange_time[0..1].to_i).to be_between(0, 24).inclusive
      expect(@isa.interchange_time[2..3].to_i).to be_between(0, 59).inclusive
    end

    it "has a Repetition Separator" do
      expect(@isa.repitition_separator).to eq('^')
    end

    it "has an Interchange Control Version Number" do
      expect(@isa.interchange_control_version_number).to eq('00501')
    end

    it "has an Interchange Control Number" do
      expect(@isa.interchange_control_number).to eq('000000905')
    end

    it "has an Aknowlegment Requested indicator" do
      expect(@isa.acknowledgement_requested).to eq('1')
    end

    it "has an Interchange Usage Indicator" do
      expect(@isa.interchange_usage_indicator).to eq('T')
    end

    it "has a Component Element Separator" do
      expect(@isa.component_element_separator).to eq(':')
    end
  end
end
