
# frozen_string_literal: true

require_relative '../model/decimal.rb'

describe Decimal do
  subject { described_class.new }

  describe '#convert - 4 excpetions' do
    it 'converts IV to 4' do
      subject.convert('IV')
      expect(subject.decimal).to eq 4
    end

    it 'converts IX to 9' do
      subject.convert('IX')
      expect(subject.decimal).to eq 9
    end

    it 'converts XL to 40' do
      subject.convert('XL')
      expect(subject.decimal).to eq 40
    end

    it 'converts XC to 90' do
      subject.convert('L')
      expect(subject.decimal).to eq 50
    end
  end
end
