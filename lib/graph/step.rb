module Graph
  class Step
    attr_reader :cursor, :grid, :path

    def initialize(cursor, grid, path=nil)
      @cursor = cursor
      @grid   = grid
      @path   = (path || Set.new) << cursor
    end

    def next
      grid.neighbors(cursor).
        reject { |node| path.include? node }.
        select { |node| node >= cursor }.
        map { |node| Step.new(node, grid, path.clone) }
    end
  end
end
