module X221
  class InterchangeEnvelope

    attr_reader :isa, :iea

    def initialize(isa, iea)
      @isa = isa
      @iea = iea

      raise 'Mismatched Interchange Control Number' unless @isa.interchange_control_number == @iea.interchange_control_number
    end
  end
end
