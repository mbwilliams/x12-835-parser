require 'X221/functional_group'
require 'X221/gs'
require 'X221/ge'

module X221
  describe FunctionalGroup do
    before do
      gs_tr3_example = "GS*HP*SENDER CODE*RECEIVER CODE*20051231*0802*1*X*005010X221~"
      gs = Gs.new(gs_tr3_example)

      ge_tr3_example = "GE*1*1~"
      ge = Ge.new(ge_tr3_example)

      @functional_group = FunctionalGroup.new(gs, ge)
    end

    it "has a functional group header" do
      expect(@functional_group.gs).not_to be_nil
    end

    it "has a functional group trailer" do
      expect(@functional_group.ge).not_to be_nil
    end

    it "has an identical group control number in the header and trailer" do
      expect(@functional_group.gs.group_control_number).to eq(@functional_group.ge.group_control_number)
    end

    context "when group control number is not identical" do
      before do
        gs_tr3_example = "GS*HP*SENDER CODE*RECEIVER CODE*20051231*0802*1*X*005010X221~"
        @bad_gs = Gs.new(gs_tr3_example)

        ge_tr3_example = "GE*1*3~"
        @bad_ge = Ge.new(ge_tr3_example)
      end

      it "raises an error with meassge Mismatched Group Control Number" do
        expect { FunctionalGroup.new(@bad_gs, @bad_ge) }.to raise_error("Mismatched Group Control Number")
      end
    end
  end
end
