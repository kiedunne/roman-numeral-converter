require_relative '../model/roman_numeral.rb'

describe RomanNumeral do
  let(:subject) { described_class.new }

  describe '#convert' do

    it 'changes 1 to I' do
      expect(subject.convert(1)).to eq 'I'
    end
  end

end
