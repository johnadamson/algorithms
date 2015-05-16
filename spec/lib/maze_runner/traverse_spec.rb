require 'spec_helper'
require 'maze_runner/node'
require 'maze_runner/grid'
require 'maze_runner/step'
require 'maze_runner/traverse'

module MazeRunner
  RSpec.describe Traverse do
    let(:grid){
      Grid.new values
    }
    let(:values){
      [
        [1,2,3],
        [6,5,4],
        [7,8,9]
      ]
    }
    it 'traverses the grid' do
      # when
      length = Traverse.new(grid).longest_path.length

      expect(length).to eq 9
    end

    context 'a sparse grid' do
      let(:values){
        [
          [1,0,1],
          [0,1,0],
          [1,0,1]
        ]
      }

      it 'traverses the grid' do
        # when
        length = Traverse.new(grid).longest_path.length

        expect(length).to eq 7
      end
    end
  end
end
