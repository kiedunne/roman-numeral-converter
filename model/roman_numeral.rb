
class RomanNumeral

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

  def convert(number)
    NUMERALS.each { |key, val| (number/key).times { @roman_numeral << val ; number -= key } }
    @roman_numeral.join
  end

end
