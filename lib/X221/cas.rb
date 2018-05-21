module X221
  class Cas < Segment
    attr_reader :claim_adjustment_group_code,
                :claim_adjustment_reason_code_1,
                :adjustment_amount_1,
                :adjustment_quantity_1,
                :claim_adjustment_reason_code_2,
                :adjustment_amount_2,
                :adjustment_quantity_2,
                :claim_adjustment_reason_code_3,
                :adjustment_amount_3,
                :adjustment_quantity_3,
                :claim_adjustment_reason_code_4,
                :adjustment_amount_4,
                :adjustment_quantity_4,
                :claim_adjustment_reason_code_5,
                :adjustment_amount_5,
                :adjustment_quantity_5,
                :claim_adjustment_reason_code_6,
                :adjustment_amount_6,
                :adjustment_quantity_6

    def initialize(raw_data)
      super
      @claim_adjustment_group_code    = @data_elements[1]
      @claim_adjustment_reason_code_1 = @data_elements[2]
      @adjustment_amount_1            = @data_elements[3]
      @adjustment_quantity_1          = @data_elements[4]
      @claim_adjustment_reason_code_2 = @data_elements[5]
      @adjustment_amount_2            = @data_elements[6]
      @adjustment_quantity_2          = @data_elements[7]
      @claim_adjustment_reason_code_3 = @data_elements[8]
      @adjustment_amount_3            = @data_elements[9]
      @adjustment_quantity_3          = @data_elements[10]
      @claim_adjustment_reason_code_4 = @data_elements[11]
      @adjustment_amount_4            = @data_elements[12]
      @adjustment_quantity_4          = @data_elements[13]
      @claim_adjustment_reason_code_5 = @data_elements[14]
      @adjustment_amount_5            = @data_elements[15]
      @adjustment_quantity_5          = @data_elements[16]
      @claim_adjustment_reason_code_6 = @data_elements[17]
      @adjustment_amount_6            = @data_elements[18]
      @adjustment_quantity_6          = @data_elements[19]
    end
  end
end
