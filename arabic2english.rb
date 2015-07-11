require './converter'
number = ARGV[0]

converter = Converter.new
puts converter.convert_number_to_words(number.to_i)
