require 'fixnum_centipad/operator/base'

module FixnumCentipad
  module Operator
    RSpec.describe Base do

      it 'registers inherited subclasses' do
        # given
        subclass = Class.new(Base)

        expect(Operator.operators.pop).to be_a(subclass)
      end
    end
  end
end
