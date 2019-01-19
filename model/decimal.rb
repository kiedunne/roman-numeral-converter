# frozen_string_literal: true

# This class converts roman numerals to decimal numbers
class Decimal
  attr_reader :decimal, :instance

  DICTIONARY = {
    'I' => 1,
    'IV' => 4,
    'V' => 5
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
    numeral.length.times do
      @decimal = DICTIONARY[numeral]
    end
  end
end
