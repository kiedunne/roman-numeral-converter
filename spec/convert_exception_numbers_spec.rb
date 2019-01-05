# frozen_string_literal: true

require_relative '../model/roman_numeral.rb'

describe RomanNumeral do
  let(:subject) { described_class.new }

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
