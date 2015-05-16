require 'spec_helper'
require 'maze_runner/node'
require 'maze_runner/grid'
require 'maze_runner/step'

module MazeRunner
  RSpec.describe Step do

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
