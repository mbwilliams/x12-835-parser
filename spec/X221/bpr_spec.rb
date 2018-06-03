require 'X221/bpr'

module X221
  describe Bpr do
    before do
      tr3_example = 'BPR*C*150000*C*ACH*CTX*01*999999992*DA*123456*1512345678*999999999*01*999988880*DA*98765*20030901~'
      @bpr = Bpr.new(tr3_example)
    end

    it "has a Segment ID value BPR" do
      expect(@bpr.segment_id).to eq('BPR')
    end

    it "has a segment name" do
      expect(@bpr.name).to eq('Beginning Segment for Payment Order/Remittance Advice')
    end

    it "has a Transaction Handling Code" do
      expect(@bpr.transaction_handling_code).to eq('C')
    end

    it "has a Monetary Amount" do
      expect(@bpr.monetary_amount).to eq('150000')
    end

    it "has a Credit/Debit Flag Code" do
      expect(@bpr.credit_debit_flag_code).to eq('C')
    end

    it "has a Payment Method Code" do
      expect(@bpr.payment_method_code).to eq('ACH')
    end

    it "has a Payment Format Code" do
      expect(@bpr.payment_format_code).to eq('CTX')
    end

    it "has a Sender (DFI) ID Number Qualifier" do
      expect(@bpr.sender_dfi_id_number_qualifier).to eq('01')
    end

    it "has a Sender (DFI) ID Number" do
      expect(@bpr.sender_dfi_id_number).to eq('999999992')
    end

    it "has a Sender Account Number Qualifier" do
      expect(@bpr.sender_account_number_qualifier).to eq('DA')
    end

    it "has a Sender Account Number" do
      expect(@bpr.sender_account_number).to eq('123456')
    end

    it "has an Originating Company Identifier" do
      expect(@bpr.originating_company_identifier).to eq('1512345678')
    end

    it "has an Originating Company Supplemental Code" do
      expect(@bpr.originating_company_supplemental_code).to eq('999999999')
    end

    it "has a Receiver (DFI) ID Number Qualifier" do
      expect(@bpr.receiver_dfi_id_number_qualifier).to eq('01')
    end

    it "has a Receiver (DFI) ID Number" do
      expect(@bpr.receiver_dfi_id_number).to eq('999988880')
    end

    it "has a Receiver Account Number Qualifier" do
      expect(@bpr.receiver_account_number_qualifier).to eq('DA')
    end

    it "has a Receiver Account Number" do
      expect(@bpr.receiver_account_number).to eq('98765')
    end

    it "has an Effective Date in format CCYYMMDD" do
      expect(@bpr.effective_date).to eq('20030901')

      # The following are not yet enforced and should raise an error
      expect(@bpr.effective_date.length).to eq(8)
      expect(@bpr.effective_date[0..3].to_i).to be_between(0, 9999).inclusive
      expect(@bpr.effective_date[4..5].to_i).to be_between(1, 12).inclusive
      expect(@bpr.effective_date[6..7].to_i).to be_between(1, 31).inclusive #Could tighten this up using a days per month hash
    end
  end
end
