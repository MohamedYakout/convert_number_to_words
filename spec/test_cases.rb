require 'rspec'
require './converter'
 
describe Converter do
  before {
	@converter = Converter.new
  }
 
  describe 'Convert Number To Words' do
  	# Cases 0 - 10
	it 'returns numbers from zero to ten' do
	  arr = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']
	  (0..10).each_with_index do |num, index|
		@converter.convert_number_to_words(num).should == arr[index]
	  end
	end

	# Cases < 100
	it 'returns eleven given 11' do
	  @converter.convert_number_to_words(11).should == 'eleven'
	end
	it 'returns nineteen given 19' do
	  @converter.convert_number_to_words(19).should == 'nineteen'
	end
	it 'returns twenty given 20' do
	  @converter.convert_number_to_words(20).should == 'twenty'
	end
	it 'returns twenty-one 21' do
	  @converter.convert_number_to_words(21).should == 'twenty one'
	end
	it 'returns ninety-nine 99' do
	  @converter.convert_number_to_words(99).should == 'ninety nine'
	end

	# Cases < 1000
	it 'retruns one hundred given 100' do
	  @converter.convert_number_to_words(100).should == 'one hundred'
	end
	
	it 'retruns one hundred given 150' do
	  @converter.convert_number_to_words(150).should == 'one hundred and fifty'
	end

	it 'retruns nine hundred ninety nine given 999' do
	  @converter.convert_number_to_words(999).should == 'nine hundred and ninety nine'
	end

	# Cases < 1000000
	it 'retruns one thousand given 1000' do
	  @converter.convert_number_to_words(1000).should == 'one thousand'
	end

	it 'retruns one thousand and one given 1001' do
	  @converter.convert_number_to_words(1001).should == 'one thousand and one'
	end

	it 'retruns one hundred thousand given 100000' do
	  @converter.convert_number_to_words(100000).should == 'one hundred thousand'
	end

	it 'retruns eleven thousand given 11000' do
	  @converter.convert_number_to_words(11000).should == 'eleven thousand'
	end

	it 'retruns one hundred and ten thousand and one given 110001' do
	  @converter.convert_number_to_words(110001).should == 'one hundred and ten thousand and one'
	end

	it 'retruns ninety hundred thousand and one given 900001' do
	  @converter.convert_number_to_words(900001).should == 'nine hundred thousand and one'
	end

	# Cases < billion
	it 'retruns ninety hundred thousand and one given 9000001' do
	  @converter.convert_number_to_words(9000001).should == 'nine million and one'
	end

	# Cases < Trillion
	it 'retruns one billion given 9000000000' do
	  @converter.convert_number_to_words(9000000000).should == 'nine billion'
	end

	# Cases >= Trillion
	it 'retruns one billion given 1000000000000' do
	  @converter.convert_number_to_words(1000000000000).should == 'The max number is one trillion'
	end
  end
end