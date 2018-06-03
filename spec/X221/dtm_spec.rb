require 'X221/dtm'

module X221
  describe Dtm do
    before do
      tr3_example = 'DTM*405*20020317~'
      @dtm = Dtm.new(tr3_example)
    end

    it "has a Segment ID value DTM" do
      expect(@dtm.segment_id).to eq('DTM')
    end

    it "has a segment name" do
      expect(@dtm.name).to eq('Date/Time Reference')
    end

    it "has a Date/Time Qualifier" do
      expect(@dtm.date_time_qualifier).to eq('405')
    end

    it "has a Date with format CCYYMMDD" do
      expect(@dtm.date).to eq('20020317')

      # The following are not yet enforced and should raise an error
      expect(@dtm.date.length).to eq(8)
      expect(@dtm.date[0..3].to_i).to be_between(0, 9999).inclusive
      expect(@dtm.date[4..5].to_i).to be_between(1, 12).inclusive
      expect(@dtm.date[6..7].to_i).to be_between(1, 31).inclusive #Could tighten this up using a days per month hash
    end
  end
end
