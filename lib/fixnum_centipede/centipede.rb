module FixnumCentipede
  class Centipede
    attr_reader :solutions

    def initialize(range:, **opts)
      @input     = range.to_a
      @solutions = []
      @work      = []
      @opts      = opts
    end

    def solve
      enqueue_root_node

      while(node = @work.shift) do
        @work.concat node.children
        @solutions << node if node.solution?
      end

      @solutions
    end

    private

    def enqueue_root_node
      @work << Node.new(past: @input.shift.to_s, future: @input, **@opts)
    end
  end
end
