
# https://pt.wikipedia.org/wiki/Numera%C3%A7%C3%A3o_romana
# --
# Symbol  I V  X   L    C   D    M
# Value   1 5  10  50  100 500 1,000
# --
#
# Execute on console with: irb -I . -r app/natural_to_roman_converter.rb
# and then: NaturalToRomanConverter.new(10).execute
#
class NaturalToRomanConverter

  PARSER_SYMBOL_MAP = {
    '1'    => 'I',
    '5'    => 'V',
    '10'   => 'X',
    '50'   => 'L',
    '100'  => 'C',
    '500'  => 'D',
    '1000' => 'M'
  }

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.execute
    execute
  end

  def execute
    return unless number.is_a?(Integer)
    return if number > 3999 || number < 1

    (0..number_size - 1).map { |position| build(position) }.join
  end

  private

  def build(position)
    batch_symbols_by(position) do |unit, middle, coming|
      case number_str[position].to_i
      when 1 then unit                # Ex: 'I'
      when 2 then unit * 2            # Ex: 'II'
      when 3 then unit * 3            # Ex: 'III'
      when 4 then "#{unit}#{middle}"  # Ex: 'IV'
      when 5 then middle              # Ex: 'V'
      when 6 then "#{middle}#{unit}"  # Ex: 'VI'
      when 7 then middle + unit * 2   # Ex: 'VII'
      when 8 then middle + unit * 3   # Ex: 'VIII'
      when 9 then "#{unit}#{coming}"  # Ex: 'IX'
      end
    end
  end

  def batch_symbols_by(position)
    unit   = select_block(position) { 0 } # Ex: 'I'
    middle = select_block(position) { 1 } # Ex: 'V'
    coming = select_block(position) { 2 } # Ex: 'X'

    yield unit, middle, coming
  end

  def select_block(position)
    offset = (number_size - position) * 2 - 2 + yield

    PARSER_SYMBOL_MAP.select.with_index { |m, i| i == offset }.values.first
  end

  def number_size
    number_str.size
  end

  def number_str
    number.to_s
  end
end
