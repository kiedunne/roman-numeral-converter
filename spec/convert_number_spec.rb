require_relative '../model/roman_numeral.rb'

describe RomanNumeral do
  let(:subject) { described_class.new }

  describe '#convert - basic numbers' do

    it 'changes 1 to I' do
      expect(subject.convert(1)).to eq 'I'
    end

    it 'changes 3 to III' do
      expect(subject.convert(3)).to eq 'III'
    end

    it 'changes 5 to V' do
      expect(subject.convert(5)).to eq 'V'
    end

    it 'changes 10 to X' do
      expect(subject.convert(10)).to eq 'X'
    end

    it 'changes 52 to LII' do
      expect(subject.convert(52)).to eq 'LII'
    end

    it 'changes 86 to LXXXVI' do
      expect(subject.convert(52)).to eq 'LII'
    end

    it 'changes 100 to C' do
      expect(subject.convert(100)).to eq 'C'
    end
  end

  describe '#convert - 6 exceptions' do
    it 'changes 4 to IV' do
      expect(subject.convert(4)).to eq 'IV'
    end

    it 'changes 9 to IX' do
      expect(subject.convert(9)).to eq 'IX'
    end

    it 'changes 40 to XL' do
      expect(subject.convert(40)).to eq 'XL'
    end

    it 'changes 90 to XC' do
      expect(subject.convert(90)).to eq 'XC'
    end

    it 'changes 400 to CD' do
      expect(subject.convert(400)).to eq 'CD'
    end

    it 'changes 900 to CM' do
      expect(subject.convert(900)).to eq 'CM'
    end
  end

end
