module MazeRunner
  class Node
    attr_reader :x, :y, :value

    class MissingValue; end

    def initialize x, y, value=nil
      @x     = x
      @y     = y
      @value = value || MissingValue.new
    end

    def == other
      x == other.x && y == other.y
    end
    alias_method :eql?, :==

    def >= other
      return true if other.value.is_a? MissingValue
      value.is_a?(MissingValue) ? false : value >= other.value
    end
  end
end
