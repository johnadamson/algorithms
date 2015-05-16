module FixnumCentipad
  module Operator
    def self.operators
      @operators ||= []
    end

    class Base
      def self.inherited(subclass)
        Operator.operators << subclass.new
      end

      def operate(ls, rs)
        raise 'Implement meh.'
      end
    end
  end
end
