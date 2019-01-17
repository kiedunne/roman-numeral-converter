
# frozen_string_literal: true

# This class converts numbers
class RomanNumeral
  attr_reader :roman_numeral, :instance

  DICTIONARY = {
    1000 => 'M',
    900  => 'CM',
    500  => 'D',
    400  => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }.freeze

  def initialize
    @roman_numeral = []
  end

  def self.create
    @instance = RomanNumeral.new
  end

  class << self
     attr_reader :instance
  end

  def convert(number)
    integer = number.to_i
    DICTIONARY.each do |key, val|
      (integer / key).times do
        @roman_numeral << val
        integer -= key
      end
    end
    @roman_numeral = @roman_numeral.join
  end

  def roman_to_decimal(numeral)
    DICTIONARY.key(numeral)
  end
end
