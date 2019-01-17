# frozen_string_literal: true

require_relative '../model/roman_numeral.rb'
describe RomanNumeral do

  subject { described_class.new }

  it 'converts I to 1' do
    expect(subject.roman_to_decimal('I')).to eq 1
  end
end
