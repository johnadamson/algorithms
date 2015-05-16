module FixnumCentipad
  module Operator
    class Plus < Base
      def operate(a, b)
        "#{a}+#{b}"
      end
    end
  end
end
