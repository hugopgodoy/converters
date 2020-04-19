require './app/natural_to_roman_converter.rb'
require 'pry-byebug'

RSpec.describe NaturalToRomanConverter do
  describe 'execute' do
    context 'out of range' do
      it { expect(described_class.new(4000).execute).to eq nil }
      it { expect(described_class.new(3.3).execute).to eq nil }
      it { expect(described_class.new(-1).execute).to eq nil }
    end

    context 'convert_until_9' do
      it { expect(described_class.new(1).execute).to eq 'I' }
      it { expect(described_class.new(2).execute).to eq 'II' }
      it { expect(described_class.new(3).execute).to eq 'III' }
      it { expect(described_class.new(4).execute).to eq 'IV' }
      it { expect(described_class.new(5).execute).to eq 'V' }
      it { expect(described_class.new(6).execute).to eq 'VI' }
      it { expect(described_class.new(7).execute).to eq 'VII' }
      it { expect(described_class.new(8).execute).to eq 'VIII' }
      it { expect(described_class.new(9).execute).to eq 'IX' }
    end

    context 'convert_10_to_99' do
      it { expect(described_class.new(10).execute).to eq 'X' }
      it { expect(described_class.new(11).execute).to eq 'XI' }
      it { expect(described_class.new(12).execute).to eq 'XII' }
      it { expect(described_class.new(13).execute).to eq 'XIII' }
      it { expect(described_class.new(14).execute).to eq 'XIV' }
      it { expect(described_class.new(15).execute).to eq 'XV' }
      it { expect(described_class.new(16).execute).to eq 'XVI' }
      it { expect(described_class.new(17).execute).to eq 'XVII' }
      it { expect(described_class.new(18).execute).to eq 'XVIII' }
      it { expect(described_class.new(19).execute).to eq 'XIX' }
      it { expect(described_class.new(20).execute).to eq 'XX' }
      it { expect(described_class.new(21).execute).to eq 'XXI' }
      it { expect(described_class.new(22).execute).to eq 'XXII' }
      it { expect(described_class.new(23).execute).to eq 'XXIII' }
      it { expect(described_class.new(24).execute).to eq 'XXIV' }
      it { expect(described_class.new(25).execute).to eq 'XXV' }
      it { expect(described_class.new(26).execute).to eq 'XXVI' }
      it { expect(described_class.new(27).execute).to eq 'XXVII' }
      it { expect(described_class.new(28).execute).to eq 'XXVIII' }
      it { expect(described_class.new(29).execute).to eq 'XXIX' }
      it { expect(described_class.new(40).execute).to eq 'XL' }
      it { expect(described_class.new(49).execute).to eq 'XLIX' }
      it { expect(described_class.new(74).execute).to eq 'LXXIV' }
      it { expect(described_class.new(77).execute).to eq 'LXXVII' }
      it { expect(described_class.new(90).execute).to eq 'XC' }
      it { expect(described_class.new(99).execute).to eq 'XCIX' }
    end

    context 'convert_100_to_999' do
      it { expect(described_class.new(100).execute).to eq 'C' }
      it { expect(described_class.new(500).execute).to eq 'D' }
      it { expect(described_class.new(900).execute).to eq 'CM' }
      it { expect(described_class.new(999).execute).to eq 'CMXCIX' }
    end

    context 'convert_1000_to_3999' do
      it { expect(described_class.new(1000).execute).to eq 'M' }
      it { expect(described_class.new(3999).execute).to eq 'MMMCMXCIX' }
    end
  end
end
