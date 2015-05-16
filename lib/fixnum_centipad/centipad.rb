module FixnumCentipad

  class Plus
    def operate(ls, rs)
      "#{ls}+#{rs}"
    end
  end

  class Minus
    def operate(ls, rs)
      "#{ls}-#{rs}"
    end
  end

  class Concat
    def operate(ls, rs)
      "#{ls}#{rs}"
    end
  end


  class Burrito
    OPERATORS = Plus.new, Minus.new, Concat.new

    def initialize(past, future)
      @past   = past
      @cursor = future.shift.to_s
      @future = future
    end

    def children
      if @cursor.empty?
        []
      else
        OPERATORS.map do |operator|
          new_past = operator.operate(@past, @cursor)
          Burrito.new(new_past, @future.dup)
        end
      end
    end

    def solution?
      solution == 100 && leaf?
    end

    private

    def solution
      eval @past
    end

    def leaf?
      @cursor.empty?
    end
  end


  class Centipad

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
