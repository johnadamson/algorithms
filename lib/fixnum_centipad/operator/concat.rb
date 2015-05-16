module FixnumCentipad
  module Operator
    class Concat < Base
      def operate(a, b)
        "#{a}#{b}"
      end
    end
  end
end
