module FixnumCentipad
  class Centipad
    attr_reader :solutions

    def initialize(range)
      @input     = range.to_a
      @solutions = []
      @work      = []
    end

    def solve
      enqueue_root_node

      while(burrito = @work.shift) do
        @work.concat burrito.children
        @solutions << burrito if burrito.solution?
      end

      @solutions
    end

    private

    def enqueue_root_node
      @work << Burrito.new(@input.shift.to_s, @input)
    end
  end
end
