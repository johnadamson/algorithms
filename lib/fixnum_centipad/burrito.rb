module FixnumCentipad
  class Burrito
    attr_reader :past

    def initialize(past:, future:, operators: nil, equals: 100)
      @past      = past
      @cursor    = future.shift.to_s
      @future    = future
      @operators = operators
      @equals    = equals
    end

    def children
      if @cursor.empty?
        []
      else
        operators.map do |operator|
          Burrito.new(
            past: operator.operate(past, @cursor),
            future: @future.dup,
            equals: @equals
          )
        end
      end
    end

    def solution?
      solution == @equals && leaf?
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
  end
end
