module X221
  class FunctionalGroup

    attr_reader :gs, :ge

    def initialize(gs, ge)
      @gs = gs
      @ge = ge

      raise 'Mismatched Group Control Number' unless @gs.group_control_number == @ge.group_control_number
    end
  end
end
