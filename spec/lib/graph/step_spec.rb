require 'spec_helper'
require 'graph/node'
require 'graph/grid'
require 'graph/step'

module Graph
  describe Step do

    describe '#next' do
      it 'creates 1 step for each neighboring node' do
        # given
        values = [
          [1,2,3],
          [4,5,6],
          [7,8,9]
        ]
        grid = Grid.new(values)

        # when
        result = Step.new(Node.new(0,0), grid).next

        expect(result.length).to eq(3)
      end
    end
  end
end
