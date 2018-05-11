require_relative 'segment'

module X221
  class Gs < Segment

    attr_reader :functional_identifier_code,
                :application_senders_code,
                :application_receivers_code,
                :group_date, :group_time,
                :group_control_number,
                :responsible_agency_code,
                :version_release_industry_identifier_code

    def initialize(raw_data)
      super
      @functional_identifier_code               = @data_elements[1]
      @application_senders_code                 = @data_elements[2]
      @application_receivers_code               = @data_elements[3]
      @group_date                               = @data_elements[4]
      @group_time                               = @data_elements[5]
      @group_control_number                     = @data_elements[6]
      @responsible_agency_code                  = @data_elements[7]
      @version_release_industry_identifier_code = @data_elements[8]
    end
  end
end
