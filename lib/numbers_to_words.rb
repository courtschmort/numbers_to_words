class Number
  def initialize(number)
    @number = number
    @word = []
  end

  def numbers_to_words
    ones = {
      "1" => "one",
      "2" => "two",
      "3" => "three",
      "4" => "four",
      "5" => "five",
      "6" => "six",
      "7" => "seven",
      "8" => "eight",
      "9" => "nine"
    }
    teens = {
      "11" => "eleven",
      "12" => "twelve",
      "13" => "thirteen",
      "14" => "fourteen",
      "15" => "fifteen",
      "16" => "sixteen",
      "17" => "seventeen",
      "18" => "eighteen",
      "19" => "nineteen"
    }
    tens = {
      "10" => "ten",
      "20" => "twenty",
      "30" => "thirty",
      "40" => "forty",
      "50" => "fifty",
      "60" => "sixty",
      "70" => "seventy",
      "80" => "eighty",
      "90" => "ninety"
    }
    number = @number.chars

    if (number.length == 3)
      hundreds_num = ones.fetch(number[0])
      tens_num = tens.fetch(number[1].concat("0"))
      ones_num = ones.fetch(number[2])
      word = @word.push(hundreds_num, "hundred", tens_num, ones_num).join(" ")

    elsif (number.length == 2)

        if (number.include?("0"))
          word = tens.fetch(@number)
        elsif (number.include?("1"))
          word = teens.fetch(@number)
        else
          ones_num = ones.fetch(number[1])
          tens_num = tens.fetch(number[0].concat("0"))
          word = @word.push(tens_num, ones_num).join(" ")
        end

    elsif (number.length == 1)
        word = ones.fetch(@number)

      end
      word

    end

  end
