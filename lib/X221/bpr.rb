require_relative 'segment'

module X221
  class Bpr < Segment

    attr_reader :transaction_handling_code,
                :monetary_amount,
                :credit_debit_flag_code,
                :payment_method_code,
                :payment_format_code,
                :sender_dfi_id_number_qualifier,
                :sender_dfi_id_number,
                :sender_account_number_qualifier,
                :sender_account_number,
                :originating_company_identifier,
                :originating_company_supplemental_code,
                :receiver_dfi_id_number_qualifier,
                :receiver_dfi_id_number,
                :receiver_account_number_qualifier,
                :receiver_account_number,
                :effective_date

    def initialize(raw_data)
      super
      @transaction_handling_code             = @data_elements[1]
      @monetary_amount                       = @data_elements[2]
      @credit_debit_flag_code                = @data_elements[3]
      @payment_method_code                   = @data_elements[4]
      @payment_format_code                   = @data_elements[5]
      @sender_dfi_id_number_qualifier        = @data_elements[6]
      @sender_dfi_id_number                  = @data_elements[7]
      @sender_account_number_qualifier       = @data_elements[8]
      @sender_account_number                 = @data_elements[9]
      @originating_company_identifier        = @data_elements[10]
      @originating_company_supplemental_code = @data_elements[11]
      @receiver_dfi_id_number_qualifier      = @data_elements[12]
      @receiver_dfi_id_number                = @data_elements[13]
      @receiver_account_number_qualifier     = @data_elements[14]
      @receiver_account_number               = @data_elements[15]
      @effective_date                        = @data_elements[16]
    end
  end
end
