require_relative '../lib/roman_converter.rb'



RSpec.describe RomeConverterSpec do


context "roma to decimal and vice versa" do


	table_for_conversion = {
		"I"      => 1,
		"IV"     => 4,
		"V"      => 5,
		"IX"     => 9,
		"X"      => 10,
		"XLIX"   => 49,
		"L"      => 50,
		"XCIX"   => 99,
		"C"      => 100,
		"CDXCIX" => 499,
		"D"      => 500,
		"CMXCIX" => 999,
		"M"      => 1000,
		"MMMMCMXCIX" => 4999

	}

	it "roman to decimal" do
		roman_converter = RomeConverter.new
		table_for_conversion.each do |roman, decimal|
			expect(number.to_dec(roman)).to eq(decimal)
		end
	end
	
	it "roman from decimal" do
		roman_converter = RomeConverter.new
		table_for_conversion.each do |roman, decimal|
			expect(number.to_rome(decimal)).to eq(roman)
		end
	end

end