
class RomanNumeral
attr_reader :roman_numeral

  NUMERALS = {
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
  }

  def initialize
    @roman_numeral = []
  end

  def self.create
    @instance = RomanNumeral.new
  end

  def self.instance
    @instance
  end

  def convert(number)
    integer = number.to_i
    NUMERALS.each { |key, val| (integer/key).times { @roman_numeral << val ; integer -= key } }
    @roman_numeral = @roman_numeral.join
  end
end
