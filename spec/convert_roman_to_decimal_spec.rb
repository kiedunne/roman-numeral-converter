# frozen_string_literal: true

require_relative '../model/decimal.rb'

describe Decimal do
  subject { described_class.new }

  describe '#convert - basic numbers' do
    it 'converts I to 1' do
      subject.convert('I')
      expect(subject.decimal).to eq 1
    end
  end
end
