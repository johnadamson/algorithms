require 'fixnum_centipad/centipad'

module FixnumCentipad
  RSpec.describe Centipad do
    let(:centipad){
      Centipad.new range
    }

    context '1..9' do
      let(:range){
        1..9
      }
      let(:solutions){
        11
      }

      it 'finds the solutions' do
        # when
        result = centipad.solve

        expect(result.count).to eq solutions
      end
    end

    context '1..14' do
      let(:range){
        1..14
      }
      let(:solutions){
        399
      }

      it 'finds the solutions' do
        # when
        result = centipad.solve

        expect(result.count).to eq solutions
      end
    end
  end
end
