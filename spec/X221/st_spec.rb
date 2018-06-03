require 'X221/st'

module X221
  describe St do
    before do
      tr3_example = "ST*835*1234~"
      @st = St.new(tr3_example)
    end

    it "has a Segment ID value St" do
      expect(@st.segment_id).to eq('ST')
    end

    it "has a segment name" do
      expect(@st.name).to eq('Transaction Set Header')
    end

    it "has a Transaction Set Identifier Code" do
      expect(@st.transaction_set_identifier_code).to eq('835')
    end

    it "has a Transaction Set Control Number" do
      expect(@st.transaction_set_control_number).to eq('1234')
    end
  end
end
