require 'fixnum_centipede/node'

module FixnumCentipede
  RSpec.describe Node do

    describe '#children' do
      subject {
        Node.new past: past, future: future, operators: operators
      }
      let(:past){
        '1'
      }
      let(:future){
        [ 2 ]
      }
      let(:operators){
        [ operator ]
      }
      let(:operator){
        double('operator').tap do |op|
          allow(op).to receive(:operate) do |a, b|
            "#{a}FOO#{b}"
          end
        end
      }

      it 'the next node in the chain' do
        # when
        children = subject.children

        expect(children.pop).to be_a_kind_of(subject.class)
      end

      it 'has a link to the past' do
        # when
        children = subject.children
        past = children.first.past

        expect(past).to eq '1FOO2'
      end
    end

    describe '#solution?' do
      subject {
        Node.new past: past, future: future
      }
      let(:past){ '100' }
      let(:future){ [] }

      it 'is true' do
        expect(subject.solution?).to be true
      end

      context 'when there is more future' do
        let(:future){ [2] }

        it 'is false' do
          expect(subject.solution?).to be false
        end
      end

      context 'when the past does not equal 100' do
        let(:past){ '1' }

        it 'is false' do
          expect(subject.solution?).to be false
        end
      end
    end
  end
end
