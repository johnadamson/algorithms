require 'spec_helper'
require 'graph/node'

module Graph
  describe Node do
    it 'has a position' do
      # given
      node = Node.new(1, 2)

      expect(node.x).to eq 1
      expect(node.y).to eq 2
    end

    it 'has a value' do
      # given
      node = Node.new(0, 0, 10)

      expect(node.value).to eq 10
    end

    it 'can have absent values' do
      # given
      node = Node.new(0,0)

      expect(node.value).to be_a_kind_of(Node::MissingValue)
    end

    describe 'equality' do
      context 'same coordinates' do
        let(:a){ Node.new 0,0 }
        let(:b){ Node.new 0,0 }

        it '#== is true' do
          expect(a == b).to be true
        end

        it '#eql? is true' do
          expect(a.eql? b).to be true
        end
      end
    end

    describe '#>=' do
      it 'is true when greater' do
        # given
        a = Node.new(0,0,1)
        b = Node.new(0,0,-1)

        expect(a >= b).to be true
      end

      it 'is true when the same' do
        # given
        a = Node.new(0,0,1)
        b = Node.new(0,0,1)

        expect(a >= b).to be true
      end

      it 'is false when less' do
        # given
        a = Node.new(0,0,-1)
        b = Node.new(0,0,1)

        expect(a >= b).to be false
      end

      context 'when other is missing' do
        it 'is true' do
          # given
          a = Node.new(0,0,0)
          b = Node.new(0,0)

          expect(a >= b).to be true
        end
      end

      context 'when self is missing' do
        it 'is false' do
          # given
          a = Node.new(0,0)
          b = Node.new(0,0,0)

          expect(a >= b).to be false
        end
      end

      context 'when self and other are missing' do
        it 'is true' do
          # given
          a = Node.new(0,0)
          b = Node.new(0,0)

          expect(a >= b).to be true
        end
      end
    end
  end
end
