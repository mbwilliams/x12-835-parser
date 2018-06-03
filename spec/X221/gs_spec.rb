require 'X221/gs'

module X221
  describe Gs do
    before do
      tr3_example = "GS*HP*SENDER CODE*RECEIVER CODE*20051231*0802*1*X*005010X221~"
      @gs = Gs.new(tr3_example)
    end

    it "has a Segment ID value GS" do
      expect(@gs.segment_id).to eq('GS')
    end

    it "has a segment name" do
      expect(@gs.name).to eq('Functional Group Header')
    end

    it "has a Functional Identifier Code" do
      expect(@gs.functional_identifier_code).to eq('HP')
    end

    it "has an Application Sender’s Code" do
      expect(@gs.application_senders_code).to eq('SENDER CODE')
    end

    it "has an Application Receiver’s Code" do
      expect(@gs.application_receivers_code).to eq('RECEIVER CODE')
    end

    it "has a Group Date with format CCYYMMDD" do
      expect(@gs.group_date).to eq('20051231')

      # The following are not yet enforced and should raise an error
      expect(@gs.group_date.length).to eq(8)
      expect(@gs.group_date[0..3].to_i).to be_between(0, 9999).inclusive
      expect(@gs.group_date[4..5].to_i).to be_between(1, 12).inclusive
      expect(@gs.group_date[6..7].to_i).to be_between(1, 31).inclusive #Could tighten this up using a days per month hash
    end

    it "has a Group Time with format HHMM" do
      expect(@gs.group_time).to eq('0802')

      # The following are not yet enforced and should raise an error
      expect(@gs.group_time.length).to eq(4)
      expect(@gs.group_time[0..1].to_i).to be_between(0, 24).inclusive
      expect(@gs.group_time[2..3].to_i).to be_between(0, 59).inclusive
    end

    it "has a Group Control Number" do
      expect(@gs.group_control_number).to eq('1')
    end

    it "has a Responsible Agency Code" do
      expect(@gs.responsible_agency_code).to eq('X')
    end

    it "has a Version / Release / Industry Identifier Code" do
      expect(@gs.version_release_industry_identifier_code).to eq('005010X221')
    end
  end
end
