require 'set'

module MazeRunner
  class Grid
    attr_reader :nodes

    def initialize(values)
      @values = values
      @nodes  = ::Set.new

      values.each_with_index do |row, i|
        row.each_with_index do |value, j|
          nodes << Node.new(i, j, value)
        end
      end
    end

    def neighbors(origin)
      nodes.select do |node|
        node != origin &&
          Math.sqrt((origin.x - node.x)**2 + (origin.y - node.y)**2) <= Math.sqrt(2)
      end
    end
  end
end
