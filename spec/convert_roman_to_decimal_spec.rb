# frozen_string_literal: true

require_relative '../model/decimal.rb'

describe Decimal do
  subject { described_class.new }

  describe '#convert - basic numbers' do
    it 'converts I to 1' do
      subject.convert('I')
      expect(subject.decimal).to eq 1
    end

    it 'converts III to 3' do
      expect(subject.convert('III')).to eq 3
    end
  end
end
