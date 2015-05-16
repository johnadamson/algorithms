module FixnumCentipad
  module Operator
    class Minus < Base
      def operate(a, b)
        "#{a}-#{b}"
      end
    end
  end
end
