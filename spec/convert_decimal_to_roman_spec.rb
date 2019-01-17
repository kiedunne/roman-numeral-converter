# frozen_string_literal: true

require_relative '../model/roman_numeral.rb'

describe RomanNumeral do
  subject { described_class.new }

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
end
