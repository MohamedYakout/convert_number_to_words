class Converter
    NUMBER_WORD_HASH = {
        0=>"zero",
        1=>"one",
        2=>"two",
        3=>"three",
        4=>"four",
        5=>"five",
        6=>"six",
        7=>"seven",
        8=>"eight",
        9=>"nine",
        10=>"ten",
        11=>"eleven",
        12=>"twelve",
        13=>"thirteen",
        14=>"fourteen",
        15=>"fifteen",
        16=>"sixteen",
        17=>"seventeen", 
        18=>"eighteen",
        19=>"nineteen",
        20=>"twenty",
        30=>"thirty",
        40=>"forty",
        50=>"fifty",
        60=>"sixty",
        70=>"seventy",
        80=>"eighty",
        90=>"ninety", 
        100=>"hundred",
        1000 =>"thousand",
        1000000=>"million",
        1000000000=>"billion"
    }

    def convert_number_to_words(number)
        words = if NUMBER_WORD_HASH[number]
            NUMBER_WORD_HASH[number]
        elsif number < 100
            ones = number % 10
            tens = (number / 10).floor
            "#{NUMBER_WORD_HASH[tens * 10]} #{NUMBER_WORD_HASH[ones]}"
        elsif number < 1000
            hundreds = (number / 100).floor
            mod = number % 100
            if mod > 0
                "#{NUMBER_WORD_HASH[hundreds]} hundred and #{convert_number_to_words(mod)}"
            else
                "#{NUMBER_WORD_HASH[hundreds]} hundred"
            end
        end
    end
end

converter = Converter.new
puts converter.convert_number_to_words(251)