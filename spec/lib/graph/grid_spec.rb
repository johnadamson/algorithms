require 'graph/grid'
require 'graph/node'

module Graph
  describe Grid do
    it 'creates nodes' do
      # given
      nodes = [
        [1,2],
        [3,4]
      ]
      grid = Grid.new(nodes)

      expect(grid.nodes.size).to be 4
    end

    describe '#neighbors' do
      it 'is the neighboring nodes' do
        # given
        nodes = [
          [1,2,3],
          [4,5,6],
          [7,8,9]
        ]
        grid = Grid.new(nodes)
        upper_left_node  = Node.new(0,0)
        upper_right_node = Node.new(0,1)
        lower_left_node  = Node.new(1,0)
        lower_right_node = Node.new(1,1)

        # when
        result = grid.neighbors(upper_left_node)

        expect(result).to eq [
          upper_right_node,
          lower_left_node,
          lower_right_node
        ]
      end
    end
  end
end
