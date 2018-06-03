require 'X221/svc'

module X221
  describe Svc do
    before do
      tr3_example = 'SVC*HC:99214*100*80~'
      @svc = Svc.new(tr3_example)
    end

    it "has a Segment ID of value SVC" do
      expect(@svc.segment_id).to eq('SVC')
    end

    it "has a segment name" do
      expect(@svc.name).to eq('Service Information')
    end

    it "has a Composite Medical Procedure Identifier" do
      expect(@svc.composite_medical_procedure_identifier).to eq('HC:99214')
    end

    it "has a Line Item Charge Amount" do
      expect(@svc.line_item_charge_amount).to eq('100')
    end

    it "has a Line Item Provider Payment Amount" do
      expect(@svc.line_item_provider_payment_amount).to eq('80')
    end
  end
end
