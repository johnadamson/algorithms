require 'fixnum_centipede/centipede'
require 'fixnum_centipede/node'
require 'fixnum_centipede/operator'

module FixnumCentipede
  RSpec.describe Centipede do
    let(:centipede){
      Centipede.new range: range, equals: 100
    }

    describe '#solve' do
      context '1..7' do
        let(:range){
          1..7
        }
        let(:solutions){
          2
        }

        it 'finds the solutions' do
          # when
          result = centipede.solve

          expect(result.count).to eq solutions
        end
      end

      context '1..14', :slow => true do
        let(:range){
          1..14
        }
        let(:solutions){
          399
        }

        it 'finds the solutions' do
          # when
         result = centipede.solve

          expect(result.count).to eq solutions
        end
      end
    end
  end
end
