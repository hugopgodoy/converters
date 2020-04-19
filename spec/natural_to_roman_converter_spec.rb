require './app/natural_to_roman_converter.rb'
require 'pry-byebug'

RSpec.describe 'converter' do
  it '1 to I' do
    expect(converter(1)).to eq 'I'
  end
end
