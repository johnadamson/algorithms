require 'spec_helper'
require 'node'
require 'grid'
require 'step'
require 'traverse'

describe Traverse do
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
    length = Traverse.new(grid).longest_sequence

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
      length = Traverse.new(grid).longest_sequence

      expect(length).to eq 7
    end
  end
end

