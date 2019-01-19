# frozen_string_literal: true

# This class converts roman numerals to decimal numbers
class Decimal
  attr_reader :decimal, :instance

  DICTIONARY = {
    'I' => 1,
    'IV' => 4,
    'V' => 5,
    'IX' => 9,
    'X' => 10,
    'XL' => 40,
    'L' => 50,
    'XC' => 90,
    'C' => 100
  }.freeze

  def initialize
    @decimal = []
  end

  def self.create
    @instance = Decimal.new
  end

  class << self
     attr_reader :instance
  end

  def convert(numeral)
    DICTIONARY.each do |key, _val|
      if key == numeral
        @decimal = DICTIONARY[numeral]
      elsif numeral.length.times do
        @decimal = DICTIONARY[numeral]
      end
      end
    end
  end
end
