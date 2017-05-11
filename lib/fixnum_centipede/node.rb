module FixnumCentipede
  class Node
    attr_reader :past

    def initialize(past:, future:, operators: nil, equals: 100)
      @past      = past
      @cursor    = future.shift
      @future    = future
      @operators = operators
      @equals    = equals
    end

    def children
      if leaf?
        []
      else
        operators.map do |operator|
          Node.new(
            past: operator.operate(@past, @cursor),
            future: @future.dup,
            equals: @equals
          )
        end
      end
    end

    def solution?
      leaf? && solution == @equals
    end

    private

    def leaf?
      @cursor.nil?
    end

    def operators
      @operators ||= Operator.operators
    end

    def solution
      eval @past
    end
  end
end
