require_relative 'segment'

module X221
  class Ge < Segment

    attr_reader :number_of_transaction_sets_included,
                :group_control_number

    def initialize(raw_data)
      super
      @number_of_transaction_sets_included = @data_elements[1]
      @group_control_number                = @data_elements[2]
    end
  end
end
