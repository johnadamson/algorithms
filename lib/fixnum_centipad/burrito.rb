module FixnumCentipad
  class Burrito
    attr_reader :past

    def initialize(past, future, opts={})
      @past      = past
      @cursor    = future.shift.to_s
      @future    = future
      @operators = opts[:operators]
      @equals    = opts[:equals] || 100
    end

    def children
      if @cursor.empty?
        []
      else
        operators.map do |operator|
          Burrito.new(
            operator.operate(past, @cursor),
            @future.dup
          )
        end
      end
    end

    def solution?
      solution == equals && leaf?
    end

    private

    def leaf?
      @cursor.empty?
    end

    def operators
      @operators ||= Operator.operators
    end

    def solution
      eval @past
    end

    def equals
      @equals
    end
  end
end
